import 'dart:async';

import 'package:mobx/mobx.dart';
part 'pomodoro_store.g.dart';

enum TimerType {
  WORK,
  BREAK,
}

class PomodoroStore = _PomodoroStoreBase with _$PomodoroStore;

abstract class _PomodoroStoreBase with Store {
  //Stream para disparar Dialog quando timer de work e break terminar
  //Para o usuário saber que o tempo terminou
  static MultiStreamController<TimerType?>? _controller;
  static final _dialogStream = Stream<TimerType>.multi((controller) {
    _controller = controller;
  });

  Stream get dialogStream => _dialogStream;

  @observable
  bool timerStarted = false;

  //Minutos em segundos para o total do CircularPercentIndicator
  @observable
  int minutesInSec = 0;

  //Porcentagem do CircularPercentIndicator a cada segundo do Timer
  @observable
  int percent = 0;

  @observable
  int workTime = 5;

  @observable
  int breakTime = 2;

  //Minutos do Timer
  @observable
  int minutes = 5;

  //Segundos do Timer
  @observable
  int seconds = 0;

  //Tarefa que está sendo executada
  @observable
  String task = '';

  //Qual atividade está sendo executada
  @observable
  TimerType timerType = TimerType.WORK;

  Timer? timer;

  @action
  void incrementWorkTime() {
    workTime++;
    //Ao definir tempo atribui aos minutos do Timer
    if (isWorkTime) {
      minutes = workTime;
    }
    //Reinicia o Timer com o novo valor do minuto
    restartTimer();
  }

  @action
  void decrementWorkTime() {
    if (workTime > 1) {
      workTime--;
      //Ao definir tempo atribui aos minutos do Timer
      if (isWorkTime) {
        minutes = workTime;
      }
    }
    //Reinicia o Timer com o novo valor do minuto
    restartTimer();
  }

  @action
  void incrementBreakTime() {
    breakTime++;
    if (isBreakTime) {
      minutes = breakTime;
    }
    restartTimer();
  }

  @action
  void decrementBreakTime() {
    if (breakTime > 1) {
      breakTime--;
      if (isBreakTime) {
        minutes = breakTime;
      }
    }
    restartTimer();
  }

  @action
  void setTask(String value) {
    task = value;
    restartTimer();
  }

  bool get isWorkTime => timerType == TimerType.WORK;

  bool get isBreakTime => timerType == TimerType.BREAK;

  //Ao acabar Timer da atividade, muda para outra
  //controller para Stream disparar o Dialog da atividade que encerrou
  void changeTimerType() {
    if (timerType == TimerType.BREAK) {
      _controller?.add(TimerType.BREAK);
      timerType = TimerType.WORK;
      minutes = workTime;
    } else {
      _controller?.add(TimerType.WORK);
      timerType = TimerType.BREAK;
      minutes = breakTime;
    }
    seconds = 0;
  }

  //Método que inicia o Timer
  @action
  void startTimer() {
    timerStarted = true;
    //Transforma os minutos de cada atividade em segundos para usar no CircularPercentIndicator
    minutesInSec = isWorkTime ? workTime * 60 : breakTime * 60;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        //Para o Timer sempre que uma atividade encerra
        //precisa dar start novamente para iniciar a outra atividade
        stopTimer();
        changeTimerType();
        percent = 0; //percent 0 porque iniciou novamente o Timer
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
        //A cada segundo +1 no percent, até ficar igual ao minutesInSec
        //que indica que o tempo foi concluído e o CircularPercentIndicator também
        percent++;
      } else {
        seconds--;
        percent++;
      }
    });
  }

  @action
  void stopTimer() {
    timerStarted = false;
    timer?.cancel();
  }

  @action
  void restartTimer() {
    timerStarted = false;
    stopTimer();
    minutes = isWorkTime ? workTime : breakTime;
    seconds = 0;
    percent = 0;
  }
}
