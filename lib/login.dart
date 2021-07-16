import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue.shade900,
            Color.fromRGBO(128,0,0,0.9),
          ]
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My First",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30.0,),),
             SizedBox(height: 10.0,),
            Text("Flutter Application",style: TextStyle(fontSize: 15,color: Colors.white70,letterSpacing: 7),),
            SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                      'Text Field',
                      style: TextStyle(color: Colors.white),
                    ), 
                    ],
                  ),
                ), 
              ),
            ), 
          ),
          ],
        ),
      ),
    ),
    );
  }
}