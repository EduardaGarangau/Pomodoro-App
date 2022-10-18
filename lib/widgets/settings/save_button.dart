import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        child: const Text(
          'Save',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 22,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: const StadiumBorder(),
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
