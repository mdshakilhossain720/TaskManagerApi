import 'package:flutter/material.dart';

class TaskConunterCard extends StatelessWidget {
  const TaskConunterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
        child: Column(
          children: [
            Text("12",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            Text("New",style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),),

          ],
        ),
      ),
    );
  }
}