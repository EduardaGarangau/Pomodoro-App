// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStoreBase, Store {
  late final _$workTimeAtom =
      Atom(name: '_PomodoroStoreBase.workTime', context: context);

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  late final _$breakTimeAtom =
      Atom(name: '_PomodoroStoreBase.breakTime', context: context);

  @override
  int get breakTime {
    _$breakTimeAtom.reportRead();
    return super.breakTime;
  }

  @override
  set breakTime(int value) {
    _$breakTimeAtom.reportWrite(value, super.breakTime, () {
      super.breakTime = value;
    });
  }

  late final _$minutesAtom =
      Atom(name: '_PomodoroStoreBase.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_PomodoroStoreBase.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$sectionsAtom =
      Atom(name: '_PomodoroStoreBase.sections', context: context);

  @override
  int get sections {
    _$sectionsAtom.reportRead();
    return super.sections;
  }

  @override
  set sections(int value) {
    _$sectionsAtom.reportWrite(value, super.sections, () {
      super.sections = value;
    });
  }

  late final _$taskAtom =
      Atom(name: '_PomodoroStoreBase.task', context: context);

  @override
  String get task {
    _$taskAtom.reportRead();
    return super.task;
  }

  @override
  set task(String value) {
    _$taskAtom.reportWrite(value, super.task, () {
      super.task = value;
    });
  }

  late final _$timerTypeAtom =
      Atom(name: '_PomodoroStoreBase.timerType', context: context);

  @override
  TimerType get timerType {
    _$timerTypeAtom.reportRead();
    return super.timerType;
  }

  @override
  set timerType(TimerType value) {
    _$timerTypeAtom.reportWrite(value, super.timerType, () {
      super.timerType = value;
    });
  }

  late final _$_PomodoroStoreBaseActionController =
      ActionController(name: '_PomodoroStoreBase', context: context);

  @override
  void incrementWorkTime() {
    final _$actionInfo = _$_PomodoroStoreBaseActionController.startAction(
        name: '_PomodoroStoreBase.incrementWorkTime');
    try {
      return super.incrementWorkTime();
    } finally {
      _$_PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkTime() {
    final _$actionInfo = _$_PomodoroStoreBaseActionController.startAction(
        name: '_PomodoroStoreBase.decrementWorkTime');
    try {
      return super.decrementWorkTime();
    } finally {
      _$_PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementBreakTime() {
    final _$actionInfo = _$_PomodoroStoreBaseActionController.startAction(
        name: '_PomodoroStoreBase.incrementBreakTime');
    try {
      return super.incrementBreakTime();
    } finally {
      _$_PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementBreakTime() {
    final _$actionInfo = _$_PomodoroStoreBaseActionController.startAction(
        name: '_PomodoroStoreBase.decrementBreakTime');
    try {
      return super.decrementBreakTime();
    } finally {
      _$_PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementSections() {
    final _$actionInfo = _$_PomodoroStoreBaseActionController.startAction(
        name: '_PomodoroStoreBase.incrementSections');
    try {
      return super.incrementSections();
    } finally {
      _$_PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementSections() {
    final _$actionInfo = _$_PomodoroStoreBaseActionController.startAction(
        name: '_PomodoroStoreBase.decrementSections');
    try {
      return super.decrementSections();
    } finally {
      _$_PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTask(String value) {
    final _$actionInfo = _$_PomodoroStoreBaseActionController.startAction(
        name: '_PomodoroStoreBase.setTask');
    try {
      return super.setTask(value);
    } finally {
      _$_PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workTime: ${workTime},
breakTime: ${breakTime},
minutes: ${minutes},
seconds: ${seconds},
sections: ${sections},
task: ${task},
timerType: ${timerType}
    ''';
  }
}
