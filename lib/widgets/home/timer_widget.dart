import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pomodoro_app/stores/pomodoro_store.dart';

class TimerWidget extends StatelessWidget {
  final int minutes;
  final int seconds;
  final bool isWorking;

  const TimerWidget({
    super.key,
    required this.minutes,
    required this.seconds,
    required this.isWorking,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: CircularPercentIndicator(
        radius: 150,
        lineWidth: 8,
        percent: 0.5,
        animation: true,
        progressColor:
            isWorking ? const Color.fromRGBO(192, 34, 67, 1) : Colors.green,
        backgroundColor: Colors.white,
        animateFromLastPercent: true,
        animationDuration: 500,
        widgetIndicator: Icon(
          Icons.circle,
          color: isWorking
              ? const Color.fromRGBO(227, 56, 62, 1)
              : Colors.greenAccent,
        ),
        onAnimationEnd: () {}, //TODO IMPLEMENTS,
        center: Text(
          '${minutes.toString().padLeft(2, '0')} : ${seconds.toString().padLeft(2, '0')}',
          style: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
