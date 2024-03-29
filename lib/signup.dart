import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
var _uname;
var _mail;
var _pwd;
var _compwd;

Widget _username() {
  return Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,10,30,10),
                child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,20,0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_rounded,color: Colors.white.withOpacity(0.5),),
                                border: InputBorder.none,
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7), 
                                  fontStyle: FontStyle.italic,
                                  ),
                                
                              ),
                              validator: (text){
                                if(text!.isEmpty){
                                  return 'Field Required !';
                                }
                                return null;
                              },

                              onSaved: (text){
                                _uname = text!;
                              },
                              ),
                          )
                        ],
                      ),
                  ), 
                ),
              ), 
             );
}



Widget _email() {
  return Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,10,30,10),
                child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,20,0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            child: TextFormField(
                              obscureText: false,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email,color: Colors.white.withOpacity(0.5),),
                                border: InputBorder.none,
                                hintText: 'E-mail',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7), 
                                  fontStyle: FontStyle.italic,
                                  ),
                                
                              ),

                              validator: (text){
                                if(text!.isEmpty){
                                  return 'Field Required !';
                                }
                                return null;
                              },

                              onSaved: (text){
                                _mail = text!;
                              },
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
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,20,0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            child: TextFormField(
                              obscureText: true,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email,color: Colors.white.withOpacity(0.5),),
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7), 
                                  fontStyle: FontStyle.italic,
                                  ),
                                
                              ),

                              validator: (text){
                                if(text!.isEmpty){
                                  return 'Field Required !';
                                }
                                return null;
                              },

                              onSaved: (text){
                                _pwd = text!;
                              },
                              ),
                          )
                        ],
                      ),
                  ), 
                ),
              ), 
             );
}




Widget _compassword() {
  return Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,10,30,10),
                child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                  color: Colors.white.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,20,0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,0),
                            child: TextFormField(
                              
                              obscureText: true,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email,color: Colors.white.withOpacity(0.5),),
                                border: InputBorder.none,
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7), 
                                  fontStyle: FontStyle.italic,
                                  ),
                                
                              ),

                              validator: (text){
                                if(text!.isEmpty){
                                  return 'Field Required !';
                                }
                                if(text != _pwd){
                                  return 'Password Does Not Match !';
                                }
                                return null;
                              },

                              onSaved: (text){
                                _compwd = text!;
                              },
                              
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
    body: SingleChildScrollView(
      child: Container(
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.teal.shade700,
              Colors.black,
            ]
          )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,50,0,50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SampleApp",style: 
                TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30.0,),),
                SizedBox(height: 10.0,),
                Text("Flutter Application",style: 
                TextStyle(fontSize: 15,color: Colors.white70,letterSpacing: 7),),
                SizedBox(height: 10,),
    
                Form(
                  key: _formKey2,
                  child:Column(
                    children: [
                      _username(),
                      _email(),
                      _password(),
                      _compassword(),
                      

                      SizedBox(
                        height: 30,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 10,
                                    offset: Offset(5, 5),
                                    spreadRadius: 5,
                                )
                              ],
                          ),
                          child: MaterialButton(
                            splashColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                            color: Colors.white.withOpacity(0.8),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(60,10,60,10),
                              child: Text('Sign Up', style: TextStyle(fontSize: 22,color: Colors.black),),
                            ),
                            onPressed: (){
                              if(_formKey2.currentState!.validate()){
                                _formKey2.currentState!.save();
                                print(_uname);
                                print(_mail);
                                print(_pwd);
                                print(_compwd);

                              }
                            },
                          ),
                        ),
                      
                    ],
                  )
    
                ),

                SizedBox(
                  height: 10,
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have an Account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white),
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: (){
                          Navigator.pop(context);                   

                      }, 
                      child:Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 16),))
                  ],
                  ),


                  SizedBox(height: 10,),


                   Container(
                    width: MediaQuery.of(context).size.width*0.55,
                    child: MaterialButton(
                      
                              splashColor: Colors.white,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200)),
                              color: Colors.blue.withOpacity(0.7),
                              child: Row(
                                
                                children: [
                                  Container(
                                        width:30.0,
                                        height:30.0,
                                        margin: EdgeInsets.fromLTRB(0,0,0,0),
                                        decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                        image: AssetImage('assests/ggl.jpg'),
                                        fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                  Padding(
                                  padding: const EdgeInsets.fromLTRB(10,15,0,15),
                                  child: Text('Join With Google', style: 
                                  TextStyle(fontSize: 16,color: Colors.white),),
                                ),
                                ],
                              ),
                              onPressed: (){
                                },
                              
                            ),
                  ),


              
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}