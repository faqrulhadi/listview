import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
List<Widget> listdata = []; 
var counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listview")
        ),
        body: ListView(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Add"),
                  onPressed: (){
                    setState(() {
                      listdata.add(
                        Text("data ke ->" +counter.toString(),
                        style: TextStyle(fontSize: 50) ,));
                      counter++; 
                    });
                  }),
                  RaisedButton(
                  child: Text("Delete"),
                  onPressed: (){
                    setState(() {
                      listdata.removeLast();
                      counter--;
                    });
                  }),
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: listdata,
              
            )
          ]
        ),
          
    ));
  }
}
