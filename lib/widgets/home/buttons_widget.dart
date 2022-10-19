import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final bool timerStarted;
  final Function() start;
  final Function() stop;
  final Function() restart;

  const ButtonsWidget({
    super.key,
    required this.timerStarted,
    required this.start,
    required this.stop,
    required this.restart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (timerStarted == false)
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              label: const Text(
                'Start',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: const StadiumBorder(),
              ),
              onPressed: start,
            ),
          ),
        if (timerStarted == true)
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.pause,
                color: Colors.white,
                size: 30,
              ),
              label: const Text(
                'Pause',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(192, 34, 67, 1),
                shape: const StadiumBorder(),
              ),
              onPressed: stop,
            ),
          ),
        const SizedBox(width: 20),
        SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton.icon(
            icon: const Icon(
              Icons.restart_alt_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: const Text(
              'Restart',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              shape: const StadiumBorder(),
            ),
            onPressed: restart,
          ),
        ),
      ],
    );
  }
}
