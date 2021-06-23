import 'dart:ffi';

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
          backgroundColor: Colors.brown,
          centerTitle: true,
          title:Text("MyFirst"),
          leading: IconButton(
            icon:Icon(Icons.menu), onPressed: () {  } ,),
            actions: [
              IconButton(
              icon:Icon(Icons.search), onPressed: () {  } ,),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: AssetImage("assests/girl.png"),
                  
                ),
              )
              ],
              flexibleSpace: Image.asset("assests/wb.jpg",fit: BoxFit.cover,),
              bottom: PreferredSize(
                child: Container(),
                preferredSize: Size.fromHeight(70.0),

              ),
        ),
        body: Center(
          child: Text("Home Page",
          style: TextStyle(fontSize: 50.0,color: Colors.brown,),
          ),
        ),
      );
  }
}