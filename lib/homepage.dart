import 'package:app/bird.dart';
import 'package:app/scores.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double birdYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = birdYaxis;
  bool gameHasStarted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(children: [
                GestureDetector(
                  onTap: () {
                    if (gameHasStarted) {
                      jump();
                    } else {
                      startgame();
                    }
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 0),
                    alignment: Alignment(0, birdYaxis),
                    color: Colors.blue,
                    child: const MyBird(),
                  ),
                ),
                Container(
                  alignment: const Alignment(0, -0.3),
                  child: gameHasStarted
                      ? const SizedBox.shrink()
                      : const Text(
                          "TAP TO PLAY",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                )
              ])),
          Container(
            height: 15,
            color: Colors.green,
          ),
          Expanded(
            child: Container(
              color: Colors.brown,
              child: const ScoresWidget(),
            ),
          )
        ],
      ),
    );
  }

//simulating the gravity while calculate the jump of the bird
  void jump() {
    setState(() {
      time = 0;
      initialHeight = birdYaxis;
    });
  }

//start the game using a timer to start jumping
  void startgame() {
    gameHasStarted = true;
    Timer.periodic(const Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 2.8 * time;
      setState(() {
        birdYaxis = initialHeight - height;
      });
      if (birdYaxis > 1) {
        timer.cancel();
        gameHasStarted = false;
      }
    });
  }
}
