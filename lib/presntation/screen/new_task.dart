import 'package:flutter/material.dart';
import 'package:taskmanagerapi/data/services/network_caller.dart';
import 'package:taskmanagerapi/data/uitils/urls.dart';
import 'package:taskmanagerapi/presntation/utilits/app_color.dart';
import 'package:taskmanagerapi/presntation/widgets/backgroun_resuable.dart';
import 'package:taskmanagerapi/presntation/widgets/snackbarresuable.dart';

import '../widgets/app_bar_resuable.dart';
import '../widgets/task_card.dart';
import '../widgets/task_counter.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  bool inTaskProgress=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: AppColor.appColor,
        child: Icon(Icons.add),),
      appBar: appBarResuable,
      body: BackgrounResuable(
          child: Column(
        children: [
          taskCounter,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 5,
                itemBuilder: (context,index){
              return TaskCard();
            }),
          )



        ],
      )),
    );
  }

  Widget get taskCounter {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context,index){
          return TaskConunterCard();
        }, separatorBuilder: (context,index){
        return SizedBox(width: 5,);

      },),
    );
  }

  Future<void> getAllTaskByCount() async {
    inTaskProgress=true;
    setState(() {
      
    });
   
    final response=await NetWorkCaller().getRequest(Urls.statusNewTask);
    if(response.isSuccess){

    }else{
      if(mounted){
        showSnackBarMesage(context, response.errorMessage ?? 'Not Show in data');

        
      }
    }


  }
}




