import 'package:flutter/material.dart';

class WorkDialog extends StatelessWidget {
  const WorkDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 0), () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Center(
              child: Text(
                'WORK OVER!!',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.red.shade700,
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
                    backgroundColor: Colors.red.shade700,
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
