import 'package:flutter/material.dart';
import 'package:taskmanagerapi/presntation/widgets/backgroun_resuable.dart';

import '../widgets/app_bar_resuable.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({super.key});

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {

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
              TextFormField(
                decoration:InputDecoration(
                  hintText: 'title'
                ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                maxLines: 6,
                decoration:InputDecoration(
                    hintText: 'Describetion'
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child:Text("Submit"))),

            ],
          ),
        ),
      ),

    );
  }
}
