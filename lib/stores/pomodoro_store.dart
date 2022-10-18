import 'package:mobx/mobx.dart';
part 'pomodoro_store.g.dart';

class PomodoroStore = _PomodoroStoreBase with _$PomodoroStore;

enum TimerType {
  WORK,
  BREAK,
}

abstract class _PomodoroStoreBase with Store {
  @observable
  int workTime = 5;

  @observable
  int breakTime = 2;

  @observable
  int minutes = 5;

  @observable
  int seconds = 0;

  @observable
  int sections = 2;

  @observable
  String task = '';

  @observable
  TimerType timerType = TimerType.WORK;

  @action
  void incrementWorkTime() {
    workTime++;
  }

  @action
  void decrementWorkTime() {
    if (workTime > 0) {
      workTime--;
    }
  }

  @action
  void incrementBreakTime() {
    breakTime++;
  }

  @action
  void decrementBreakTime() {
    if (breakTime > 0) {
      breakTime--;
    }
  }

  @action
  void incrementSections() {
    sections++;
  }

  @action
  void decrementSections() {
    if (sections > 0) {
      sections--;
    }
  }

  @action
  void setTask(String value) {
    task = value;
  }

  bool get isWorkTime => timerType == TimerType.WORK;

  bool get isBreakTime => timerType == TimerType.BREAK;
}
