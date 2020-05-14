import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Viewall extends StatelessWidget {
  var data=[
    {"name":"Rohith","age":21,"Admno":1203,"Pstatus":"paid"},
    {"name":"Rojin","age":22,"Admno":1204,"Pstatus":"not paid"},
    {"name":"Athul","age":21,"Admno":1205,"Pstatus":"paid"},
    {"name":"Rajesh","age":26,"Admno":1205,"Pstatus":"not paid"},
    {"name":"Suresh","age":29,"Admno":1206,"Pstatus":"not paid"}
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
                    margin: EdgeInsets.all(20.0),
                    elevation: 5.0,
                    child: ListTile(
                    leading: Icon(Icons.ac_unit,size: 20.0),
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
