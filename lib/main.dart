import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondtry/views/Login.dart';
import 'package:secondtry/views/Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Colors.indigo ,
        body:SingleChildScrollView(
          child: Register()
        ),
      ),
    );
  }
}
