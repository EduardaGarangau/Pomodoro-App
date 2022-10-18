import 'package:flutter/material.dart';

class SectionField extends StatelessWidget {
  final int sections;
  final Function() increment;
  final Function() decrement;

  const SectionField({
    super.key,
    required this.sections,
    required this.increment,
    required this.decrement,
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
            const Text(
              'Sections:     ',
              style: TextStyle(
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
              '$sections set',
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
