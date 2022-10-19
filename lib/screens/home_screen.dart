import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/stores/pomodoro_store.dart';
import 'package:pomodoro_app/utils/routes.dart';
import 'package:pomodoro_app/widgets/home/break_dialog.dart';
import 'package:pomodoro_app/widgets/home/break_widget.dart';
import 'package:pomodoro_app/widgets/home/buttons_widget.dart';
import 'package:pomodoro_app/widgets/home/task_widget.dart';
import 'package:pomodoro_app/widgets/home/timer_widget.dart';
import 'package:pomodoro_app/widgets/home/work_dialog.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Pomodoro Timer',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Observer(
          builder: (context) {
            return Column(
              children: [
                store.isBreakTime
                    ? const BreakWidget()
                    : TaskWidget(task: store.task),
                const SizedBox(height: 35),
                TimerWidget(
                  percent: store.percent,
                  minutes: store.minutes,
                  seconds: store.seconds,
                  isWorking: store.isWorkTime,
                  minutesInSec: store.minutesInSec,
                ),
                const SizedBox(height: 50),
                ButtonsWidget(
                  timerStarted: store.timerStarted,
                  start: store.startTimer,
                  stop: store.stopTimer,
                  restart: store.restartTimer,
                ),
                StreamBuilder(
                  stream: store.dialogStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data == TimerType.BREAK
                          ? const BreakDialog()
                          : const WorkDialog();
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Observer(
        builder: (context) {
          return FloatingActionButton(
            backgroundColor: store.timerStarted
                ? Colors.grey
                : const Color.fromRGBO(192, 34, 67, 1),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: store.timerStarted
                ? null
                : () => Navigator.of(context).pushNamed(Routes.SETTINGS),
          );
        },
      ),
    );
  }
}
