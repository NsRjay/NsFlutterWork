import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondtry/views/Login.dart';

class Register extends StatelessWidget {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.deepPurple,
            Colors.deepOrange
          ]
        )
      ),


      child: Column(
        children: <Widget>[
          SizedBox(
            height: 300.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: 
              BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
            ),
            height: MediaQuery.of(context).size.height,
            child: Container(

              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 70.0),
                  TextField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(800.0)
                      ),
                      hintText: "Enter Your Name:",
                      hintStyle: TextStyle(fontStyle: FontStyle.italic)
                      
                    ),
                  ),
                  SizedBox(height: 40.0),
                  TextField(
                    controller: passcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(800.0)
                        ),
                        hintText: "Enter Your Password:",
                        hintStyle: TextStyle(fontStyle: FontStyle.italic)

                    ),
                  ),
                  SizedBox(height: 40.0),
                  InkWell(

                    onTap: () {
                   print("Clicked");
                    var getName=namecontroller.text;
                    print(getName);
                    },

                    child:
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.deepPurple,
                              Colors.deepOrange
                            ]
                          ),
                          borderRadius: BorderRadius.circular(800.0)
                      ),

                      height: 55.0,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "REGISTER",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:10.0),
                  InkWell(
                    onTap:(){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder:(context)=>MyLoginScreen()
                          ));
                      },
                    child: Container(
                      height: 55.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.deepPurple,
                              Colors.deepOrange
                            ]
                        ),
                        borderRadius: BorderRadius.circular(800.0)
                    ),

                      child: Center(
                        child: Text("Go to Login page",
                        style: TextStyle(color: Colors.white,fontSize: 25.0)),
                      ),

                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
