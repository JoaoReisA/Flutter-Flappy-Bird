import 'dart:async';

class BirdUsecase {
  static double birdYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = birdYaxis;
  bool gameHasStarted = false;
  static double barrierXone = 1;
  double barrierXtwo = barrierXone + 2;

  List jump() {
    time = 0;
    initialHeight = birdYaxis;
    return [time, initialHeight];
  }

  void startgame() {
    gameHasStarted = true;
    Timer.periodic(const Duration(milliseconds: 60), (timer) {
      barrierXone += 0.01;
      barrierXtwo += 0.01;
      time += 0.05;
      height = -4.9 * time * time + 2.8 * time;
      birdYaxis = initialHeight - height;

      barrierXone -= 0.05;
      barrierXtwo -= 0.05;
      if (barrierXone < -2) {
        barrierXone += 3.5;
      } else {
        barrierXone -= 0.05;
      }
      if (barrierXtwo < -2) {
        barrierXtwo += 3.5;
      } else {
        barrierXtwo -= 0.05;
      }
      if (birdYaxis > 1) {
        timer.cancel();
        gameHasStarted = false;
      }
    });
  }
}
