import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:keylol_api/keylol.dart';
import 'package:keylol_api/models/api_response.dart';
import 'package:keylol_api/models/check_post.dart';
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
}
