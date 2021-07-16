import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

Widget _username() {
  return Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,10,30,10),
                child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // if you need this
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                      child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
                              
                            ),
                            )
                        ],
                      ),
                  ), 
                ),
              ), 
             );
}



Widget _password() {
  return Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,10,30,10),
                child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // if you need this
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                      child: Column(
                        children: [
                          TextFormField(
                            obscureText: true,
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
                              
                            ),
                            )
                        ],
                      ),
                  ), 
                ),
              ), 
             );
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
            SizedBox(height: 40,),

            Form(
              key: _formKey,
              child:Column(
                children: [
                  _username(),
                  _password()
                ],
              )

            ),
          ],
        ),
      ),
    ),
    );
  }
}