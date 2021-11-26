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

  startGame(){
    
  }
}
