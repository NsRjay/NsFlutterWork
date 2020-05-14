import 'package:flutter/material.dart';
import 'package:secondtry/views/Viewall.dart';
import 'package:flutter/cupertino.dart';

class MyLoginScreen extends StatelessWidget {
  TextEditingController usertextcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Username",
                  style: TextStyle(fontSize: 30.0, color: Colors.teal)),
              TextField(
                  controller: usertextcontroller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.perm_identity),
                      hintText: "Enter the Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
              SizedBox(
                height: 40.0,
              ),
              Text("Password",
                  style: TextStyle(fontSize: 30.0, color: Colors.teal)),
              TextField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Enter password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(
                height: 50.0,
              ),
              GestureDetector(
                onTap: () {
//                  print("Tapped");
//                  print(("We reached on tap"));
                  var getUsername=usertextcontroller.text;
                  print("Username="+getUsername);

//                  print("We reached second declaration");

                  var getPassword=passwordcontroller.text;
//                  print("We Reached If statement");
                  print("Password="+getPassword);
                  if(getUsername=="admin"&& getPassword=="123")
                  {
                    print("Login success");
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>Viewall()));
                  }
                  else
                  {
                    print("Invalid Credentials");
                  }
//                  print("We reached end of on tap");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20.0)
                  ),

                  height: 55.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25.0, color: Colors.deepPurple),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
