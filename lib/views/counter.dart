import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MyCounterApp extends StatefulWidget {
  @override
  _MyCounterAppState createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage("images/avengers.png"),
                  fit: BoxFit.fill
            )
          ),
        ),
      ),
    );
  }
}
