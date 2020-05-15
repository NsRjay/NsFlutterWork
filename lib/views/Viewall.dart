import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Viewall extends StatelessWidget {
  var data=[
    {"image":"images/avengers.png","name":"Rohith","age":21,"Admno":1203,"Pstatus":"paid"},
    {"image":"images/3.jpg","name":"Rojin","age":22,"Admno":1204,"Pstatus":"not paid"},
    {"image":"images/avengers.png","name":"Athul","age":21,"Admno":1205,"Pstatus":"paid"},
    {"image":"images/356432.jpg","name":"Rajesh","age":26,"Admno":1205,"Pstatus":"not paid"},
    {"image":"images/avengers.png","name":"Suresh","age":29,"Admno":1206,"Pstatus":"not paid"},
    {"image":"images/avengers.png","name":"Anil","age":27,"Admno":1207,"Pstatus":"paid"}
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Container(
          
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (
              context,index
              ){
                return 
                  Card(
                    color: Colors.purple,
                    margin: EdgeInsets.all(20.0),
                    elevation: 7.0,
                    child: ListTile(
                    leading: ClipOval(
                      child: Image(
                        image: AssetImage(data[index]["image"]),
                      ),
                    ),
                    trailing: data[index]["Pstatus"].toString()=="paid"?Icon(Icons.check): FlatButton(
                      onPressed: (){print("Navigating to payment screen");}, child: Text("Pay Now"),),
                    title:Text("Name:"+data[index]["name"],style: TextStyle(color: Colors.purple)),
                    subtitle: Text("Age:"+data[index]["age"].toString()+"\n"+"Adm Number:"+data[index]["Admno"].toString()),
                )
                  );
              }
          ),
        ),
      ),
    );
  }
}
