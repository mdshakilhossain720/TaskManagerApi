import 'package:flutter/material.dart';
import 'package:taskmanagerapi/data/services/network_caller.dart';
import 'package:taskmanagerapi/data/uitils/urls.dart';
import 'package:taskmanagerapi/presntation/widgets/backgroun_resuable.dart';
import 'package:taskmanagerapi/presntation/widgets/snackbarresuable.dart';

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

   bool inProgress=false;

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
                maxLines: 6,
                decoration:InputDecoration(
                    hintText: 'Describetion'
                ),
                validator: (String? value){
                  if(value?.trim().isEmpty ?? true){
                    return 'Enter your email';
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                  child: Visibility(
                    visible: inProgress=false,
                    replacement: Center(child: CircularProgressIndicator()),
                    child: ElevatedButton(onPressed: (){
                     if(_formKey.currentState!.validate()){
                       addNewTask();



                       }
                    }, child:Text("Submit")),
                  )),

            ],
          ),
        ),
      ),

    );
  }

  Future<void> addNewTask()async {
    inProgress=true;
    setState(() async {
      Map<String,dynamic>inparma={
        "title":titleController.text,
        "describtion":descrbtionController.text,

      };
      final response=await NetWorkCaller().postRequest(Urls.addNewTask, inparma);
      inProgress=false;
      setState(() {

      });
      if(response.isSuccess){
        titleController.clear();
        descrbtionController.clear();
        if(mounted){
          showSnackBarMesage(context, 'new task has benn add');

        }

      }else{
        if(mounted){
          showSnackBarMesage(context, response.errorMessage ?? "Add to New task");

        }
      }

    });


  }



  @override
  void dispose(){
    super.dispose();
    titleController.dispose();
    descrbtionController.dispose();

  }


}
