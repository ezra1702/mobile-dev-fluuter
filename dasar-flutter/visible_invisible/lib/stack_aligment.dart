import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> colorList = [Colors.blue, Colors.green, Colors.yellow];
  List<double> widthHeight = [200.0, 150.0, 100.0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World App'),
          backgroundColor: const Color.fromARGB(255, 255, 210, 76),
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            for (int i = 0; i < 3; i++)
              Container(
                width: widthHeight[i % 3],
                height: widthHeight[i % 3],
                color: colorList[i % 3],
                child: Center(
                  child: Text(
                    'Item ${i + 1}',
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
