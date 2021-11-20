import 'package:app/bird.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double birdYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: jump,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 0),
                alignment: Alignment(0, birdYaxis),
                color: Colors.blue,
                child: const MyBird(),
              ),
            )),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
      ]),
    );
  }

//simulating the gravity while calculate the jump of the bird
  void jump() {
    initialHeight = birdYaxis;
    Timer.periodic(const Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 2.8 * time;
      setState(() {
        birdYaxis = initialHeight - height;
      });
      if (birdYaxis > 0) {
        timer.cancel();
      }
    });
  }
}
