import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
      ),
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
            backgroundColor: Colors.teal,
            title:Text("MyFirst"),
            leading: IconButton(
              icon:Icon(Icons.menu,size: 30.0,), onPressed: () {  } ,),
              actions: [
                IconButton(
                icon:Icon(Icons.more_vert), onPressed: () {  } ,),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage(
                      "assests/girl.png"),
                      ),
                      )
                      ],
                      
                // flexibleSpace: Image.asset(
                //   "assests/wb.jpg",fit: BoxFit.cover,
                //   ),
                  bottom: TabBar(
                    // indicatorWeight: 3.0,
                    // indicatorColor: Colors.black,
                    labelColor: Colors.teal,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(
                    // gradient: LinearGradient(
                    //     colors: [Colors.redAccent, Colors.orangeAccent]),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    // color: Colors.redAccent
                    ),
                    tabs: [
                      Tab(icon: Icon(Icons.home,size: 28.0,),),
                      Tab(icon: Icon(Icons.library_books,size: 28.0,),),
                      Tab(icon: Icon(Icons.notifications,size: 28.0,),),
                      Tab(icon: Icon(Icons.message,size: 28.0,),),
                      
                    ],
                  ),
                elevation: 0.0,
                shadowColor: Colors.black,
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
         
        
        // Container(
        //   color: Colors.white,
        //   child: Container(
        //     width: double.infinity,
        //     height: 200.0,
        //     margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
        //     alignment: Alignment.center,
        //     child: Text('First Container',
        //     style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.w600),
        //     ),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(7),
        //       color: Colors.grey[300],
        //     ),
        //   ),
        // ),
        ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Tab1(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget> [
        Column(
          children:<Widget> [
            Container(
              margin: EdgeInsets.all(20.0),
              child:Text(
                 "News Feed",
                 style: TextStyle(
                   fontSize: 20.0,fontWeight: FontWeight.w700,
                   ),
                   )
                   ),
          ],
        ),

        Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children:<Widget> [
              FloatingActionButton(
                child: Icon(Icons.search,size: 28,),
                onPressed: (){},
               )
            ],
          ),
        )
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Tab2(){
  return Container(
    child: Center(
      child: Text("Library"),
      ),
      
  );
}

// ignore: non_constant_identifier_names
Widget Tab3(){
  return Container(
    child: Center(
      child: Text("Notifications"),
      ),
      
  );
}

// ignore: non_constant_identifier_names
Widget Tab4(){
  return Container(
    child: Center(
      child: Text("Messages"),
      ),
      
  );
}