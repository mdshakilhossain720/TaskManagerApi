import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskmanagerapi/presntation/screen/signup.dart';
import 'package:taskmanagerapi/presntation/utilits/assets_path.dart';

import '../widgets/backgroun_resuable.dart';
import 'pincode.dart';

class EmailVerifaction extends StatefulWidget {
  const EmailVerifaction({super.key});

  @override
  State<EmailVerifaction> createState() => _EmailVerifactionState();
}

class _EmailVerifactionState extends State<EmailVerifaction> {
  final TextEditingController emailTextController =TextEditingController();

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

                        Text("Email Verifaction",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text("6 digit in mobile verifaction ",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email",
                          ),
                        ),

                        SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>PinCode()));
                          },

                            child:Icon(Icons.arrow_circle_right_outlined),),
                        ),

                        SizedBox(height: 50,),


                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(" Have an account ?"),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
                            },
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.grey,
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),

                                child: Text("Signup")),


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
    super.dispose();
    emailTextController.dispose();



  }
}
