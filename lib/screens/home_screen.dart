import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/stores/pomodoro_store.dart';
import 'package:pomodoro_app/utils/routes.dart';
import 'package:pomodoro_app/widgets/home/break_widget.dart';
import 'package:pomodoro_app/widgets/home/buttons_widget.dart';
import 'package:pomodoro_app/widgets/home/task_widget.dart';
import 'package:pomodoro_app/widgets/home/timer_widget.dart';
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
                    minutes: store.minutes,
                    seconds: store.seconds,
                    isWorking: store.isWorkTime),
                const SizedBox(height: 65),
                const ButtonsWidget(),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(192, 34, 67, 1),
        child: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
        onPressed: () => Navigator.of(context).pushNamed(Routes.SETTINGS),
      ),
    );
  }
}
