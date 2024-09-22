import 'package:flutter/material.dart';
import 'package:taskmanagerapi/presntation/utilits/app_color.dart';
import 'package:taskmanagerapi/presntation/widgets/backgroun_resuable.dart';

import '../widgets/app_bar_resuable.dart';
import '../widgets/task_card.dart';
import '../widgets/task_counter.dart';

class CancellTask extends StatelessWidget {
  const CancellTask({super.key});

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
              // taskCounter,
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return TaskCard();
                    }),
              )



            ],
          )),
    );
  }

// Widget get taskCounter {
//   return SizedBox(
//     height: 110,
//     child: ListView.separated(
//       scrollDirection: Axis.horizontal,
//       itemCount: 4,
//       itemBuilder: (context,index){
//         return TaskConunterCard();
//       }, separatorBuilder: (context,index){
//       return SizedBox(width: 5,);
//
//     },),
//   );
// }



}




