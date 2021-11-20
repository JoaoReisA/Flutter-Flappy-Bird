import 'package:flutter/material.dart';

class ScoresWidget extends StatelessWidget {
  const ScoresWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "SCORE",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "0",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "BEST",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "10",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ],
        ),
      ],
    );
  }
}
