import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("title Will be here"),
          Text("Describtion Will be here"),
          Text("Date:12/09/2024"),
          Row(
            children: [
              Chip(label: Text("New")),
              Spacer(),
              IconButton(onPressed: (){}, icon:Icon(Icons.edit)),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete)),

            ],
          )

        ],
      ),
    );
  }
}