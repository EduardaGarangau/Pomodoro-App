import 'package:flutter/material.dart';

class BreakDialog extends StatelessWidget {
  const BreakDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 0), () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            title: const Center(
              child: Text(
                'BREAK OVER!!',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  child: Icon(
                    Icons.timer_off_sharp,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      }),
      builder: (context, _) => const SizedBox(),
    );
  }
}
