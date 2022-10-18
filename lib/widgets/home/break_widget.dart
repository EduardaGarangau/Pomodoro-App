import 'package:flutter/material.dart';

class BreakWidget extends StatelessWidget {
  const BreakWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: Colors.green.shade900,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        child: const Center(
          child: Text(
            'Break!!',
            style: TextStyle(
              fontFamily: 'Nunito',
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
