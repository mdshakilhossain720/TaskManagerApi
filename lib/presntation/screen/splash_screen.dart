import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapi/presntation/utilits/assets_path.dart';

import '../widgets/app_logo.dart';
import 'sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    moveToInSign();


  }

  Future<void>moveToInSign() async {
    await Future.delayed(Duration(seconds: 3));
    if(mounted){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>SignInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/image/back.svg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          AppLogo(),

        ],
      ),
    );
  }
}


