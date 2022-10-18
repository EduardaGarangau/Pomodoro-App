import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/widgets/settings/save_button.dart';
import 'package:pomodoro_app/widgets/settings/sections_field.dart';
import 'package:pomodoro_app/widgets/settings/settings_field.dart';
import 'package:pomodoro_app/widgets/settings/task_field.dart';
import 'package:provider/provider.dart';
import '../stores/pomodoro_store.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Timer Settings',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Observer(
        builder: (context) {
          return Column(
            children: [
              const SizedBox(height: 50),
              TaskField(setTask: store.setTask),
              const SizedBox(height: 15),
              SettingsField(
                title: 'Work Time:',
                time: store.workTime,
                increment: store.incrementWorkTime,
                decrement: store.decrementWorkTime,
              ),
              const SizedBox(height: 15),
              SettingsField(
                title: 'Break Time:',
                time: store.breakTime,
                increment: store.incrementBreakTime,
                decrement: store.decrementBreakTime,
              ),
              const SizedBox(height: 15),
              SectionField(
                sections: store.sections,
                increment: store.incrementSections,
                decrement: store.decrementSections,
              ),
              const SizedBox(height: 70),
              const SaveButton(),
            ],
          );
        },
      ),
    );
  }
}
