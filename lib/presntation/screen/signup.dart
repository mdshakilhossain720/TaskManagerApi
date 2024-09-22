import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskmanagerapi/presntation/utilits/assets_path.dart';

import '../widgets/backgroun_resuable.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailTextController =TextEditingController();
  final TextEditingController passTextController=TextEditingController();
  final TextEditingController fristNameTextController =TextEditingController();
  final TextEditingController lastNameTextController=TextEditingController();
  final TextEditingController mobileTextController =TextEditingController();
  //final TextEditingController passTextController=TextEditingController();
  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgrounResuable(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 100,),
                    
                        Text("Join with us",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                          ),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "FristName",
                          ),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "LastName",
                          ),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Mobile",
                          ),
                        ),
                        SizedBox(height: 8,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                        SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){},
                    
                            child:Icon(Icons.arrow_circle_right_outlined),),
                        ),
                    


                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Have a account ?"),
                            TextButton(onPressed: (){},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.grey,
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),
                    
                                child: Text("Signin")),
                    
                    
                          ],
                        )
                    
                    
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose(){
    emailTextController.dispose();
    passTextController.dispose();
    fristNameTextController.dispose();
    lastNameTextController.dispose();
    mobileTextController.dispose();
    super.dispose();



  }
}
