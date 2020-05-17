


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();

}

class _TasksState extends State<Tasks> {
  TextEditingController mytaskcontroller=TextEditingController();
  var mytask=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              TextField(
                 controller: mytaskcontroller,
                decoration: InputDecoration(
                  hintText: "Enter A Task",
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic
                  )
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: (){
                  var tasks=mytaskcontroller.text;
                  mytaskcontroller.clear();
                setState(() {
                  mytask.add(tasks);
                });
                  },
                color: Colors.orangeAccent,
                child: Text("Add Task!"),
              ),
             ListView.builder(
                 shrinkWrap: true,
                 itemCount: mytask.length==null?0:mytask.length,
                 itemBuilder: (context,index){
                   return Card(
                     elevation: 5.0,
                     child: ListTile(
                       leading: Icon(Icons.add_location,color: Colors.orangeAccent,),
                       trailing:
                       GestureDetector(
                           onTap: (){
                             setState(() {
                               mytask.removeAt(index);
                             });
                           },
                           child:
                       Icon(Icons.close,color:Colors.lightGreen)),
                       title: Text(mytask[index].toString(),style: TextStyle(color: Colors.purple),),
                     ),
                   );
                 })
            ],

          ),
        ),
      ),
    );
  }
}
