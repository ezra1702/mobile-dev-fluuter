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
        body: GridView(
          padding: EdgeInsets.only(
            top: 20.0,
            left: 10.0,
            right: 10.0,
            bottom: 20.0,
          ),
          // kalau gridview, udah ditentuinnya dari crossAxisCount
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //=> itu sudah fix
            crossAxisCount: 1, // Number of columns in the grid
            crossAxisSpacing: 10.0, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
            childAspectRatio:
                1 / 2, // Aspect ratio of each grid item (Width/Height)
          ),
          // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //   // mengikuti ukuran maksimal dari grid item (device width)
          //   maxCrossAxisExtent: 200.0, // Maximum width of each grid item
          //   crossAxisSpacing: 10.0, // Spacing between columns
          //   mainAxisSpacing: 10.0, // Spacing between rows
          // ),
          children: [
            for (int i = 0; i < 20; i++)
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
