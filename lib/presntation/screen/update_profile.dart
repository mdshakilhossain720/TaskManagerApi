
import 'package:flutter/material.dart';
import 'package:taskmanagerapi/data/model/response_wrapper.dart';
import 'package:taskmanagerapi/data/services/network_caller.dart';
import 'package:taskmanagerapi/data/uitils/urls.dart';
import 'package:taskmanagerapi/presntation/widgets/backgroun_resuable.dart';

import '../widgets/app_bar_resuable.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {

  final TextEditingController emailController=TextEditingController();

  final TextEditingController nameController=TextEditingController();
  final TextEditingController lastController=TextEditingController();
  final TextEditingController mobileController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
 // final TextEditingController nameController=TextEditingController();


  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarResuable,
      body: BackgrounResuable(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 48,),
              Text("Add To New Task",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),

                        child: Text("Photo"),
                        color: Colors.grey,
                      ),
                      Text("Image"),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

              TextFormField(
                controller: emailController,
                decoration:InputDecoration(
                    hintText: 'Emamil'


                ),
                validator: (String? value){
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your email';
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'Frist Name'
                ),
                validator: (String? value){
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your email';
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'Last Name'
                ),
                validator: (String? value){
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your email';
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'Mobile'
                ),
                validator: (String? value){
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your email';
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'PasWord',
                ),
                validator: (String? value){
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your password';
                  }if(value!.length <= 6){
                    return 'Enter your 6 digits';

                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () async {
                    if(_formKey.currentState!.validate()){
                      Map<String,dynamic>inputparam={
                        "email":emailController.text.toString(),
                        "fristName":nameController.text.toString(),
                        "lastName":lastController.text.toString(),
                        "password":passwordController.text.toString(),

                      };

                    final ResponseWrapper response=await  NetWorkCaller().postRequest(Urls.updateProfile,inputparam);
                      if(response.isSuccess){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Success full") ));
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Not Success full") ));

                      }
                    }
                  }, child:Text("Update Profile"))),

            ],
          ),
        ),
      ),

    );
  }

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    lastController.dispose();
    mobileController.dispose();
    passwordController.dispose();


  }
}

