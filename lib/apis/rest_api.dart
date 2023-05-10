import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:keylol_api/keylol.dart';
import 'package:keylol_api/models/api_response.dart';
import 'package:keylol_api/models/variables.dart';

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
}
