import 'dart:developer';

import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  @override
  _MyCounterAppState createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  int counter=0;
  void _incrementValue()
  {
    setState(() {
      counter++;
    });
  }  void _decrementValue()
  {
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/WDneo.png"),
                  fit: BoxFit.fill
            )
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(

                      onPressed: (){
                        _incrementValue();
                        },
                     child: Text("Add",style: TextStyle(fontSize: 20.0)),
                    ),
                    SizedBox(height: 20.0,),
                    Text(counter.toString(),style:TextStyle(fontSize: 40.0,color: Colors.deepOrange)),
                    SizedBox(height: 20.0,),
                    FlatButton(

                      onPressed: (){
                        _decrementValue();
                      },
                      child: Text("Sub",style: TextStyle(fontSize: 20.0)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
