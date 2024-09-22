
import 'package:flutter/material.dart';
import 'package:taskmanagerapi/presntation/widgets/backgroun_resuable.dart';

import '../widgets/app_bar_resuable.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {

  final TextEditingController titleController=TextEditingController();

  final TextEditingController descrbtionController=TextEditingController();
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
                decoration:InputDecoration(
                    hintText: 'Emamil'
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'Frist Name'
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'Last Name'
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'Mobile'
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(

                decoration:InputDecoration(
                    hintText: 'PasWord',
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child:Text("Update Profile"))),

            ],
          ),
        ),
      ),

    );
  }
}

