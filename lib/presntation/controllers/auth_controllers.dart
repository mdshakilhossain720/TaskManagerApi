import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AuthController{
  static String? accessToken;
  Future<void>saveUserData(UserData, userdata)async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   await sharedPreferences.setString('userdata',jsonEncode(userdata.toJson()));


  }
  Future<UserData?> getUserData()async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    String? result=sharedPreferences.getString(userdata);
    if(result == null){
      return null;
    }else{
      return UserData.fromJson(jsonDecode(result));


    }


  }
  Future<void>saveToken(String token async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    await sharedPreferences.getString('token',token);
    accessToken=token;
  }

  Future<String?>getUserToken() async {
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  return sharedPreferences.getString(token);

  }
  Future<bool>isLoginIn() async {
    final resulat=await getUserToken();
    accessToken=resulat;
    return resulat != null;
  }
  Future<void>clearUserData() async {
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  await sharedPreferences.clear();


  }
}