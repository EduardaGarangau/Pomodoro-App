import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskWidget extends StatelessWidget {
  final String task;

  const TaskWidget({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(192, 34, 67, 1),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: Colors.red.shade900,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Task: ',
              style: TextStyle(
                fontFamily: 'Nunito',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              task.isNotEmpty ? task : 'Write an article',
              style: const TextStyle(
                fontFamily: 'Nunito',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
