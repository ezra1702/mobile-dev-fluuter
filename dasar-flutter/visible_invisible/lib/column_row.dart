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
          backgroundColor: Colors.amber,
        ),
        body: Row(
          // crossAxisAlignment: CrossAxisAlignment.start, // Kenbailkan dari mainAxisAlignment 
          // mainAxisAlignment : mainAxisAlignment.begin, // Kenbailkan dari crossAxisAlignment
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              // scrollDirection: Axis.horizontal, // Enable horizontal scrolling Default is vertical
              child: Column(
                children: [
                  for (int i = 0; i < 10; i++)
                    Container(
                      width: 100,
                      height: 100,
                      color: colorList[i % 3],
                      child: Center(
                        child: Text(
                          'Item $i',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(width: 100, height: 300, color: Colors.red),
            Stack(
              children: [
                Container(width: 192, height: 300, color: Colors.yellow),
                Container(width: 170, height: 250, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.cyanAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
