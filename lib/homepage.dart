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

  void jump() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        birdYaxis -= 0.1;
      });
    });
  }
}
