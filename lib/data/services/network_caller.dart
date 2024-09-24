import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:taskmanagerapi/app.dart';
import 'package:taskmanagerapi/data/model/response_wrapper.dart';
import 'package:taskmanagerapi/presntation/controllers/auth_controllers.dart';
import 'package:taskmanagerapi/presntation/screen/sign_in_screen.dart';

class NetWorkCaller {
  Future<ResponseWrapper> getRequest(String url) async {
    try {
      final Response response = await get(Uri.parse(url), headers: {
        'token': AuthController.accessToken ?? "",
      });
      log(response.statusCode.toString());
      log(response.body.toString());
      if (response.statusCode == 200) {
        final decoderesponse = jsonDecode(response.body);
        return ResponseWrapper(
            statuscode: 200, responseBody: decoderesponse, isSuccess: true);
      } else {
        return ResponseWrapper(statuscode: response.statusCode,
            responseBody: '',
            isSuccess: false);
      }
    } catch (e) {
      log(e.toString());
      return ResponseWrapper(isSuccess: false,
          statuscode: -1,
          responseBody: '',
          errorMessage: e.toString());
    }
  }

  /// POst Method

  Future<ResponseWrapper> postRequest(String url,
      Map<String, dynamic>body,{bool isSignin=false}) async {
    try {
      final Response response = await post(
          Uri.parse(url), body: jsonEncode(body), headers: {
        'Content-type': 'application/json',
        'token': AuthController.accessToken ?? ""
      });
      log(response.statusCode.toString());
      log(response.body.toString());
      if (response.statusCode == 200) {
        final decoderesponse = jsonDecode(response.body);
        return ResponseWrapper(
            statuscode: 200, responseBody: decoderesponse, isSuccess: true);
      } else if (response.statusCode == 401) {
        if(isSignin){
          return ResponseWrapper(statuscode: response.statusCode,
              responseBody: '',
              isSuccess: false);

        }else{
          movieToScreen();
          return ResponseWrapper(statuscode: response.statusCode,
              responseBody: '',
              isSuccess: false);

        }


      }


      else {
        return ResponseWrapper(statuscode: response.statusCode,
            responseBody: '',
            isSuccess: false);
      }
    } catch (e) {
      log(e.toString());
      return ResponseWrapper(isSuccess: false,
          statuscode: -1,
          responseBody: '',
          errorMessage: e.toString());
    }
  }

  static Future<void> movieToScreen() async {
    await AuthController().clearUserData();
    Navigator.pushAndRemoveUntil(TaskManager.navigatorkey.currentState!.context,
        MaterialPageRoute(builder: (_) => SignInScreen()),(route)=>false);
  }
}


