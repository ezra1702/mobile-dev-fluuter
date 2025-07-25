import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle:
              true, // if in android default is false, in iOS default is true
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: Text(
            "My Flutter App",
            style: TextStyle(fontFamily: 'NotoSans', color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // Aligns children vertically in the center
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(),
                  SizedBox(width: 20), // Adds space between the logo and text
                  Text(
                    "Hello, World!",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontFamily: 'NotoSans',
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Center(
                  child: Text(
                    "Welcome to Flutter",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'NotoSans',
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.thumb_up, color: Colors.green, size: 30),
                    ElevatedButton(
                      onPressed: () {
                        print("Button Clicked");
                      },
                      child: Text(
                        "Click Me",
                        style: TextStyle(fontFamily: 'NotoSans'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
