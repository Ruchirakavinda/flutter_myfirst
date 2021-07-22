import 'dart:async';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_spinkit/flutter_spinkit.dart';
import "package:flutter/material.dart";
import 'package:myfirst/login.dart';
import 'home.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),

    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()
    {
      Navigator.push(context, 
      MaterialPageRoute(builder: (context)=> MyHome()),
      );

    });
  }
  

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.teal.shade700,
                Colors.black,
              ],
            )
          ),
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome To ",style: TextStyle(fontSize: 20.0,color: Colors.white70),),
              SizedBox(height: 10.0,),
              Text("My First",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 50.0,),),
              SizedBox(height: 10.0,),
              Text("Flutter Application",style: TextStyle(fontSize: 15,color: Colors.white70,letterSpacing: 7),),
              SizedBox(height: 40.0,),
              // CircularProgressIndicator(
              //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              // )
              SpinKitThreeBounce(
                color: Colors.white,
                size: 30.0,
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

