import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
    // throw UnimplementedError();
  }
}

class MyHome extends StatelessWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
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
                    backgroundImage: AssetImage(
                      "assests/girl.png"),
                      ),
                      )
                      ],
                flexibleSpace: Image.asset(
                  "assests/wb.jpg",fit: BoxFit.cover,
                  ),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home),),
                      Tab(icon: Icon(Icons.message),),
                      Tab(icon: Icon(Icons.notifications),),
                      Tab(icon: Icon(Icons.settings),),
                    ],
                  )
                // PreferredSize(
                //   child: Container(),
                //   preferredSize: Size.fromHeight(70.0,),
                // ),
          ),
       body: TabBarView(
         children: [
           Tab1(),
           Tab2(),
           Tab3(),
           Tab4(),
         ],
         ),
        ),
    );
  }
}

Widget Tab1(){
  return Container(
    child: Center(
      child: Text("Home"),
      ),
      
  );
}

Widget Tab2(){
  return Container(
    child: Center(
      child: Text("Messages"),
      ),
      
  );
}

Widget Tab3(){
  return Container(
    child: Center(
      child: Text("Notifications"),
      ),
      
  );
}

Widget Tab4(){
  return Container(
    child: Center(
      child: Text("Settings"),
      ),
      
  );
}