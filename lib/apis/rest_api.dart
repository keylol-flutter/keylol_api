import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keylol_api/keylol.dart';
import 'package:keylol_api/models/api_response.dart';
import 'package:keylol_api/models/check_post.dart';
import 'package:keylol_api/models/post.dart';
import 'package:keylol_api/models/variables.dart';
import 'package:keylol_api/models/view_thread.dart';

/// api 调用
extension RestApi on Keylol {
  /// 密码登录
  /// messageval
  /// login_succeed -> 登录成功
  /// login_seccheck2 -> 需要图形验证码
  /// other -> 登录失败错误信息 messsagestr
  Future<ApiResponse<DefaultVariables>> loginWithPassword({
    required String username,
    required String password,
  }) async {
    final resp = await dio().post("/api/mobile/index.php",
        queryParameters: {
          'module': 'login',
          'action': 'login',
          'loginsubmit': 'yes',
        },
        data: FormData.fromMap({
          'username': username,
          'password': password,
          'answer': '',
          'questionid': '0'
        }));

    return compute(ApiResponse.empty, resp.data as Map<String, dynamic>);
  }

  /// 浏览帖子
  /// 返回帖子以及回复
  /// postList[0] 为帖子
  /// 不存在时 postList 为空
  /// 有异常时 message 不为空，和帖子可并存
  Future<ApiResponse<ViewThread>> viewThread(String tid, int page) async {
    final resp = await dio().get("/api/mobile/index.php", queryParameters: {
      'version': null,
      'module': 'viewthread',
      'tid': tid,
      'cp': 'all',
      'page': page
    });

    return compute(ApiResponse.fromJson, {
      'json': resp.data,
      'fromJsonT': ViewThread.fromJson,
    });
  }

  /// 权限
  Future<ApiResponse<CheckPost>> checkPost() async {
    final resp = await dio().post('/api/mobile/index.php',
        queryParameters: {'module': 'checkpost'});

    return compute(ApiResponse.fromJson, {
      'json': resp.data,
      'fromJsonT': CheckPost.fromJson,
    });
  }

  /// 图片上传
  Future<String> forumUpload(String uid, String uploadHash, XFile image,
      {String type = 'image'}) async {
    final resp = await dio().post('/api/mobile/index.php',
        queryParameters: {'module': 'forumupload', 'type': type},
        data: FormData.fromMap({
          'uid': uid,
          'hash': uploadHash,
          'Filedata':
              await MultipartFile.fromFile(image.path, filename: image.name)
        }));
    return resp.data;
  }

  /// 回复
  /// post != null 时为回复帖子
  Future<ApiResponse<DefaultVariables>> sendReply(String formHash, String tid,
      String message, List<String> aids, Post? post) async {
    final dateTime = DateTime.now();
    final resp = await dio().post('/api/mobile/index.php',
        queryParameters: {
          'module': 'sendreply',
          'replysubmit': 'yes',
          'action': 'reply',
          'tid': tid,
          if (post != null) 'reppid': post.pid,
        },
        data: FormData.fromMap({
          'formhash': formHash,
          'message': message,
          if (post != null)
            'noticetrimstr': '''
            [quote][size=2][url=forum.php?mod=redirect&goto=findpost&pid=${post.pid}&ptid=${post.tid}][color=#999999]${post.author} 发表于 ${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}[/color][/url][/size]
            ${post.shortMessage()}[/quote]
            ''',
          'posttime': '${dateTime.millisecondsSinceEpoch}',
          'usesig': 1,
          for (final aid in aids) 'attachnew[$aid][description]': aid,
        }));

    return compute(ApiResponse.empty, resp.data as Map<String, dynamic>);
  }

  /// 投票
  Future<ApiResponse<DefaultVariables>> pollVote(
      String tid, List<String> pollAnswers) async {
    final resp = await dio().post('/api/mobile/index.php',
        queryParameters: {
          'module': 'pollvote',
          'pollsubmit': 'yes',
          'action': 'votepoll',
          'tid': tid
        },
        data: FormData.fromMap({'pollanswers[]': pollAnswers}));

    return compute(ApiResponse.empty, resp.data as Map<String, dynamic>);
  }
}
