import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
    //TODO: implement build
    throw UnimplementedError();
  }
}

class MyHome extends StatelessWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirst"),
        ),
        body: Center(
          child: Text("Hello World",
          style: TextStyle(fontSize: 50.0,color: Colors.blue,),
          ),
        ),
      );
  }
}