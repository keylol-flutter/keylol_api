import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:keylol_api/keylol.dart';
import 'package:keylol_api/models/guide.dart';
import 'package:keylol_api/models/index.dart';
import 'package:keylol_api/models/login_param.dart';
import 'package:html/parser.dart';
import 'package:keylol_api/models/space_reply.dart';
import 'package:keylol_api/models/space_thread.dart';

/// 模拟网页调用
extension WebApi on Keylol {
  /// 初始化获取登录用 hash
  Future<List<String>> _getInitHash() async {
    final resp = await dio().get(
      '/member.php',
      queryParameters: {
        'mod': 'logging',
        'action': 'login',
      },
    );

    return compute(parse, resp.data).then((document) {
      final inputs = document.getElementsByTagName('input');
      late String formHash;
      for (final input in inputs) {
        if (input.attributes['name'] == 'formhash') {
          formHash = input.attributes['value']!;
          break;
        }
      }
      final pwLoginType = document.getElementsByClassName('pwLogintype')[0];
      final actionExp =
          pwLoginType.getElementsByTagName('li')[0].attributes['_action']!;
      final lastIndexOfEqual = actionExp.lastIndexOf('=');
      final loginHash = actionExp.substring(lastIndexOfEqual + 1);
      return [formHash, loginHash];
    });
  }

  /// 获取短信登录验证用参数
  Future<LoginParam> getSmsLoginParam(String cellphone) async {
    final hashes = await _getInitHash();
    final formHash = hashes[0];
    final loginHash = hashes[1];

    final resp = await dio().post(
      '/plugin.php',
      queryParameters: {
        'id': 'duceapp_smsauth',
        'ac': 'sendcode',
        'handlekey': 'sendsmscode',
        'smscodesubmit': 'login',
        'inajax': 1,
        'loginhash': loginHash
      },
      data: FormData.fromMap({
        'duceapp': 'yes',
        'formhash': formHash,
        'referer': 'https://keylol.com',
        'lssubmit': 'yes',
        'loginfield': 'auto',
        'cellphone': cellphone,
      }),
    );

    return compute(parse, resp.data)
        .then((document) => LoginParam.fromDocument(document));
  }

  /// 获取密码登录验证码验证用参数
  Future<LoginParam> getSecCodeLoginParam(String auth, String formHash) async {
    final resp = await dio().get(
      '/member.php',
      queryParameters: {
        'mod': 'logging',
        'action': 'login',
        'auth': auth,
        'refer': 'https://keylol.com',
        'cookietime': 1
      },
    );
    return compute(parse, resp.data)
        .then((document) => LoginParam.fromDocument(document))
        .then((secCodeParam) => secCodeParam..auth = auth);
  }

  /// 获取登录用图形验证码
  Future<Uint8List> getSecCode({
    required String update,
    required String idHash,
  }) async {
    final resp = await dio().get(
      '/misc.php',
      options: Options(
        responseType: ResponseType.bytes,
        headers: {
          'Accept': 'image/webp,image/apng,image/*,*/*;q=0.8',
          'Accept-Encoding': 'gzip, deflate, br',
          'Accept-Language': 'zh-CN,zh;q=0.9',
          'Connection': 'keep-alive',
          'hostname': 'https://keylol.com',
          'Referer': 'https://keylol.com/member.php?mod=logging&action=login',
          'Sec-Fetch-Mode': 'no-cors',
          'Sec-Fetch-Site': 'same-origin',
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'
        },
      ),
      queryParameters: {
        'mod': 'seccode',
        'update': update,
        'idhash': idHash,
      },
    );

    return compute(Uint8List.fromList, resp.data as List<int>);
  }

  /// 校验图形验证码
  Future<bool> checkSecCode({
    required LoginParam loginParam,
    required String secCode,
  }) async {
    final resp = await dio().get('/misc.php', queryParameters: {
      'mod': 'seccode',
      'action': 'check',
      'inajax': 1,
      'idhash': loginParam.idHash,
      'secverify': secCode
    });

    if ((resp.data as String).contains('succeed')) {
      return true;
    }
    return false;
  }

  /// 发送短信验证码
  Future<void> sendSms({
    required LoginParam loginParam,
    required String cellphone,
    required String secCode,
  }) async {
    final resp = await dio().post('/plugin.php',
        queryParameters: {
          'id': 'duceapp_smsauth',
          'ac': 'sendcode',
          'handlekey': 'sendsmscode',
          'smscodesubmit': 'login',
          'inajax': 1,
          'loginhash': loginParam.loginHash
        },
        data: FormData.fromMap({
          'formhash': loginParam.formHash,
          'smscodesubmit': 'login',
          'cellphone': cellphone,
          'smsauth': 'yes',
          'seccodehash': loginParam.idHash,
          'seccodeverify': secCode
        }));

    final data = resp.data as String;
    if (data.contains('errorhandle_sendsmscode')) {
      return Future.error(Exception('抱歉，验证码填写错误'));
    }
  }

  /// 短信登录
  /// 登录失败:
  /// <?xml version="1.0" encoding="utf-8"?>
  /// <root><![CDATA[短信验证码错误，还有2次机会<script type="text/javascript" reload="1">if(typeof errorhandle_=='function') {errorhandle_('短信验证码错误，还有2次机会', {'count':'2','rd':'1'});}</script>]]></root>
  /// 登录成功:
  /// <root><script type="text/javascript" reload="1">if(typeof succeedhandle_login=='function') {succeedhandle_login('https://keylol.com/suid-273189', '欢迎您回来，支柱会员 cdgeass，现在将转入登录前页面', {'username':'cdgeass','usergroup':'支柱会员'});}hideWindow('login');showDialog('欢迎您回来，支柱会员 cdgeass，现在将转入登录前页面', 'right', null, function () { window.location.href ='https://keylol.com/suid-273189'; }, 0, null, null, null, null, null, 1);</script> </root>
  Future<void> loginWithSms({
    required LoginParam loginParam,
    required String cellphone,
    required String sms,
  }) async {
    final res = await dio().post('/plugin.php',
        queryParameters: {
          'id': 'duceapp_smsauth',
          'ac': 'login',
          'loginsubmit': 'yes',
          'loginhash': loginParam.loginHash,
          'inajax': 1
        },
        data: FormData.fromMap({
          'duceapp': 'yes',
          'formhash': loginParam.formHash,
          'referer': 'https://keylol.com',
          'lssubmit': 'yes',
          'loginfield': 'auto',
          'cellphone': cellphone,
          'smscode': sms
        }));

    final data = res.data as String;
    if (data.contains('succeedhandle_login')) {
      return;
    }
    // 错误信息
    final regExp = RegExp("errorhandle_\\('(.*)', {");
    return Future.error(Exception(regExp.firstMatch(data)!.group(1)!));
  }

  /// 密码验证码登录
  Future<void> loginWithSecCode({
    required LoginParam loginParam,
    required String secCode,
  }) async {
    final resp = await dio().post('/member.php',
        queryParameters: {
          'mod': 'logging',
          'action': 'login',
          'loginsubmit': 'yes',
          'loginhash': loginParam.loginHash,
          'inajax': 1
        },
        data: FormData.fromMap({
          'duceapp': 'yes',
          'formhash': loginParam.formHash,
          'referer': 'https://keylol.com/',
          'handlekey': 'login',
          'auth': loginParam.auth,
          'seccodehash': loginParam.idHash,
          'seccodeverify': secCode,
          'cookietime': 2592000
        }));

    final data = resp.data as String;
    if (data.contains('succeedhandle_login')) {
      return;
    }
    // 错误信息
    final regExp = RegExp("errorhandle_\\('(.*)', {");
    return Future.error(Exception(regExp.firstMatch(data)!.group(1)!));
  }

  /// 主页信息, 轮播图和帖子
  Future<Index> index() async {
    final resp = await dio().get("/");
    return compute(parse, resp.data)
        .then((document) => Index.fromDocument(document));
  }

  /// 导读
  Future<Guide> guide(String view, int page) async {
    final resp = await dio().get('/forum.php', queryParameters: {
      'mod': 'guide',
      'view': view,
      'page': page,
    });
    return compute(parse, resp.data)
        .then((document) => Guide.fromDocument(document));
  }

  /// 用户发帖
  Future<SpaceThread> spaceThread(String uid, int page) async {
    final resp = await dio().get('/home.php', queryParameters: {
      'mod': 'space',
      'uid': uid,
      'do': 'thread',
      'view': 'me',
      'from': 'space',
      'type': 'thread',
      'page': page,
    });

    return compute(parse, resp.data)
        .then((document) => SpaceThread.fromDocument(document));
  }

  /// 用户回复
  Future<SpaceReply> spaceReply(String uid, int page) async {
    final resp = await dio().get('/home.php', queryParameters: {
      'mod': 'space',
      'uid': uid,
      'do': 'thread',
      'view': 'me',
      'from': 'space',
      'type': 'reply',
      'order': 'dateline',
      'page': page,
    });

    return compute(parse, resp.data)
        .then((document) => SpaceReply.fromDocument(document));
  }
}
