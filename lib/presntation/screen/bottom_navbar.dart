
import 'package:flutter/material.dart';
import 'package:taskmanagerapi/presntation/utilits/app_color.dart';

import 'complite_screen.dart';
import 'new_task.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currtentIndex=0;
   List<Widget> _screen=[
    NewTask(),
     CompleteScreen(),
    NewTask(),
    NewTask(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[currtentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currtentIndex,
        selectedItemColor: AppColor.appColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
          currtentIndex=index;
          if (mounted){
            setState(() {

            });
          }
          },


          items: [
        BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: 'New progress'),
        BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: 'complete'),
        BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: 'progress'),
        BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: 'Cancell'),
      ]),

    );
  }
}
