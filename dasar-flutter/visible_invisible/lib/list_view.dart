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
        body: ListView(
          scrollDirection: Axis
              .horizontal, // When ScrollDirection is horizontal, the height it follow the default height of the ListView, but when ScrollDirection is vertical, the width it follow the default width of the ListView
          children: [
            for (int i = 0; i < 10; i++)
              Container(
                width: 200,
                height: 100,
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
