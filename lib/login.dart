import 'package:flutter/material.dart';
import 'package:myfirst/home.dart';
import 'signup.dart';


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
var _uname;
var _pwd;

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
                                prefixIcon: Icon(
                                  Icons.person_rounded,color: Colors.white.withOpacity(0.5),),
                                border: InputBorder.none,
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7), 
                                  fontStyle: FontStyle.italic,),
                                
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
                                prefixIcon: Icon(Icons.lock,color: Colors.white.withOpacity(0.5),),
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




  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        height:MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              // Colors.blue.shade900,
              // Color.fromRGBO(128,0,0,0.9),
              Colors.teal.shade700,
              Colors.black,
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

               

              Text("SampleApp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30.0,),),
              SizedBox(height: 10.0,),
              Text("Flutter Application",style: TextStyle(fontSize: 15,color: Colors.white70,letterSpacing: 7),),
              SizedBox(height: 40,),
    
              Form(
                key: _formKey,
                child:Column(
                  children: [
                    _username(),
                    _password(),

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
                            child: Text('Sign In', style: TextStyle(fontSize: 22,color: Colors.black),),
                          ),
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              _formKey.currentState!.save();

                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)=> MyHome()));

                              print(_uname);
                              print(_pwd);
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
                  Text("Already Haven't an Account?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white),
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> Signup()));
                    }, 
                    child:Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 16),))
                ],
                ),



                SizedBox(
                height: 10,
              ),



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
                                child: Text('Join with Google',style: TextStyle(fontSize: 16,color: Colors.white),
                               maxLines: 15,
                               softWrap: false,
                               overflow: TextOverflow.ellipsis,
                              ),
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
    );
  }
}