import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taskmanagerapi/app.dart';
import 'package:taskmanagerapi/presntation/screen/sign_in_screen.dart';
import 'package:taskmanagerapi/presntation/screen/update_profile.dart';

import '../utilits/app_color.dart';

PreferredSizeWidget get appBarResuable {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: AppColor.appColor,
    title: InkWell(
      onTap: (){
        Navigator.push(TaskManager.navigatorkey.currentState!.context,MaterialPageRoute(builder: (_)=>UpdateProfile()));
      },
      child: Row(
        children: [
          CircleAvatar(),
          SizedBox(width: 10,),
          Expanded(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shakil",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "mdshakilhossin720@gmail.com",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(
                TaskManager.navigatorkey.currentState!.context,
                MaterialPageRoute(builder: (_) => SignInScreen()),(route)=>false);
          }, icon: Icon(Icons.logout)),
        ],
      ),
    ),
  );
}