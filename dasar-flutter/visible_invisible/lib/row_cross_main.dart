import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> colorList = [Colors.blue, Colors.green, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World App'),
          backgroundColor: const Color.fromARGB(255, 255, 210, 76),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // in row, mainAxisAlignment is used to align children horizontally
          crossAxisAlignment: CrossAxisAlignment
              .end, // in row, crossAxisAlignment is used to align children vertically
          children: [
            for (int i = 0; i < 3; i++)
              Container(
                width:
                    Random().nextInt(150) +
                    100, // Random width between 100 and 300
                height: Random().nextInt(150) + 100,
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
