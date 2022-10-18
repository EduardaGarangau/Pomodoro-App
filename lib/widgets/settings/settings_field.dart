import 'package:flutter/material.dart';

class SettingsField extends StatelessWidget {
  final String title;
  final Function() decrement;
  final Function() increment;
  final int time;

  const SettingsField({
    super.key,
    required this.title,
    required this.time,
    required this.decrement,
    required this.increment,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 450,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(18),
              ),
              onPressed: decrement,
            ),
            Text(
              '$time min',
              style: const TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17,
              ),
            ),
            ElevatedButton(
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(18),
              ),
              onPressed: increment,
            ),
          ],
        ),
      ),
    );
  }
}
