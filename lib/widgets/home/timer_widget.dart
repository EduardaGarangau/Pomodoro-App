import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pomodoro_app/stores/pomodoro_store.dart';

class TimerWidget extends StatelessWidget {
  final int minutes;
  final int seconds;
  final bool isWorking;
  final int percent;
  final int minutesInSec;

  const TimerWidget({
    super.key,
    required this.minutes,
    required this.seconds,
    required this.isWorking,
    required this.percent,
    required this.minutesInSec,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: CircularPercentIndicator(
        radius: 150,
        lineWidth: 8,
        percent: percent == minutesInSec ? 0 : percent / minutesInSec,
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
