
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:taskmanagerapi/data/model/response_wrapper.dart';

class NetWorkCaller{
  Future<ResponseWrapper>getRequest(String url) async {
    try{
      final Response response=await get(Uri.parse(url));
      log(response.statusCode.toString());
      log(response.body.toString());
      if(response.statusCode ==200){
        final decoderesponse=jsonDecode(response.body);
        return ResponseWrapper(statuscode: 200, responseBody:decoderesponse, isSuccess: true);
      }else{
        return ResponseWrapper(statuscode:response.statusCode, responseBody:'', isSuccess: false);

      }

    }catch(e){
      log(e.toString());
      return ResponseWrapper(isSuccess: false, statuscode:-1, responseBody:'',errorMessage: e.toString());

    }






  }

  /// POst Method

  Future<ResponseWrapper>postRequest(String url,Map<String,dynamic>body) async {
    try{
      final Response response=await post(Uri.parse(url),body: jsonEncode(body),headers: {
        'Content-type':'application/json'
      });
      log(response.statusCode.toString());
      log(response.body.toString());
      if(response.statusCode ==200){
        final decoderesponse=jsonDecode(response.body);
        return ResponseWrapper(statuscode: 200, responseBody:decoderesponse, isSuccess: true);
      }else{
        return ResponseWrapper(statuscode:response.statusCode, responseBody:'', isSuccess: false);

      }

    }catch(e){
      log(e.toString());
      return ResponseWrapper(isSuccess: false, statuscode:-1, responseBody:'',errorMessage: e.toString());

    }






  }


}