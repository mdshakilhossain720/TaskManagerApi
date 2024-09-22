import 'package:flutter/material.dart';
import 'package:taskmanagerapi/presntation/utilits/app_color.dart';

import 'presntation/screen/splash_screen.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});
  static  GlobalKey<NavigatorState> navigatorkey=GlobalKey<NavigatorState>();

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: TaskManager.navigatorkey,
      debugShowCheckedModeBanner: false,
      title: 'TaskMAnager',
       home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Roboto',
        inputDecorationTheme:InputDecorationTheme(

          contentPadding: EdgeInsets.symmetric(horizontal:24,vertical: 16),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          )
      ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
            backgroundColor: AppColor.appColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),

            ),
            foregroundColor: Colors.white,

          ),

        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )
          ),
        ),
        chipTheme: ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )
        )
      ),

    );
  }
}
