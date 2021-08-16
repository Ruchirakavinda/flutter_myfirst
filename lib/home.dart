import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirst/main.dart';
import 'package:myfirst/messages.dart';
import 'package:myfirst/profile.dart';
import 'package:myfirst/tab1.dart';
import 'package:myfirst/tab2.dart';
import 'package:myfirst/tab3.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:myfirst/tab4.dart';

// import 'package:flutter/rendering.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
     return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
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
            ),
            backgroundColor: Colors.teal[700],
            leading: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Builder(builder: (context)=>(IconButton(
                    icon:Icon(MdiIcons.sortVariant,size: 35.0,), onPressed: () { 
                      Scaffold.of(context).openDrawer();
                     } ,)
                     ),
                  ),
                ),
            title:Center(child: Text("SampleApp",style: TextStyle(fontSize: 25.0,),)),
            
          
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                  icon:Icon(MdiIcons.messageText,size: 28.0,color: Colors.white.withOpacity(0.9),), 
                  onPressed: () { 
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> Msg()));
                    } ,),
                ),
                ],


                  bottom: TabBar(
                    
                    indicatorWeight: 5.0,
                    indicatorColor: Colors.white,
                    labelColor:Colors.white,
                    unselectedLabelColor: Colors.white70,
                   
                    tabs: [
                      Tab(text: 'Home',icon: Icon(Icons.home,size: 22.0,),),
                      Tab(text: 'Community',icon: Icon(Icons.people,size: 22.0,),),
                      Tab(text: 'Notifications',icon: Icon(Icons.notifications,size: 22.0,),),
                      // Tab(text: 'Library',icon: Icon(Icons.library_books,size: 22.0,),),
                      
                    ],
                  ),
                elevation: 0.0,
                shadowColor: Colors.black,
                
                
          ),

          drawer: Drawer(
            child: ListView(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
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
                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,10,10,10),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.fromLTRB(20,15,0,0),
                            decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assests/my.jpg"),
                              fit: BoxFit.fill,
                            ),
                            ),
                           ),

                           Container(
                             child:IconButton(
                              onPressed: (){
                                Navigator.pop(context);
                              }, 
                              icon: Icon(MdiIcons.arrowLeftCircle,size: 35,color: Colors.white70,)),
                           )
                           
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,10),
                        child: ListTile(
                          title: Text('Ruchira Kavinda', style: TextStyle(color: Colors.white,fontSize:18,),),
                          subtitle: Text("ruchirakvnd@gmail.com",style: TextStyle(color: Colors.white,fontSize:16,),),
                        ),
                      ),
                    ],
                  ) ,
            ),
           
          ListTile(
            leading: Icon(Icons.person,size: 30,color: Colors.teal[800],),
            title: Text('Profile',style: TextStyle(color: Colors.black,fontSize:16,),),
            subtitle: Text("See your profile"),
            trailing: Icon(Icons.menu),
            onTap:(){ 
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (_) => Profile()));
            },
          ),
          Container(
                    height: 0.5,
                    color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.photo,size: 30,color: Colors.teal[800],),
            title: Text('Photos',style: TextStyle(color: Colors.black,fontSize:16,),),
            subtitle: Text("See your photos"),
            trailing: Icon(Icons.menu),
            onTap:(){ Navigator.pop(context);},
          ),
           Container(
                    height: 0.5,
                    color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.video_collection,size: 30,color: Colors.teal[800],),
            title: Text('Videos',style: TextStyle(color: Colors.black,fontSize:16,),),
            subtitle: Text("See your videos"),
            trailing: Icon(Icons.menu),
            onTap:(){ Navigator.pop(context);},
          ), 
           Container(
                    height: 0.5,
                    color: Colors.grey[300],
          ),            
          ListTile(
            leading: Icon(Icons.timelapse,size: 30,color: Colors.teal[800],),
            title: Text('Memories',style: TextStyle(color: Colors.black,fontSize:16,),),
            subtitle: Text("See your memories"),
            trailing: Icon(Icons.menu),
            onTap:(){ Navigator.pop(context);},
          ),
           Container(
                    height: 0.5,
                    color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.save,size: 30,color: Colors.teal[800],),
            title: Text('Saved',style: TextStyle(color: Colors.black,fontSize:16,),),
            subtitle: Text("Saved posts"),
            trailing: Icon(Icons.menu),
            onTap:(){ Navigator.pop(context);},
          ),
           Container(
                    height: 10,
                    color: Colors.grey[300],
          ),

          ListTile(
            leading: Icon(Icons.settings,size: 30,color: Colors.teal[800],),
            title: Text('Settings & Privacy',style: TextStyle(color: Colors.black,fontSize:16,),),
            subtitle: Text("Settings & Privacy Actions"),
            onTap:(){ Navigator.pop(context);},
          ),
          Container(
                    height: 0.5,
                    color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.help,size: 30,color: Colors.teal[800],),
            title: Text('Help & Support',style: TextStyle(color: Colors.black,fontSize:16,),),
            onTap:(){ Navigator.pop(context);},
          ),
          Container(
                    height: 0.5,
                    color: Colors.grey[300],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(50,10,50,20),
            child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),                      
                      gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                      Colors.teal.shade700,
                      Colors.black,
                  ],
                )
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(onPressed: (){
                        Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> SplashScreen()));
                      },
                       child: Text("Log Out",style: TextStyle(fontSize: 18,color: Colors.white),)),
            ),
          ),


          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 30,
              color: Colors.teal[900],
              child: Center(child: Text("www.sampleapp.com  |  V 1.0.0",style: TextStyle(color: Colors.white),)),
            ),
          )
           
                
              ],),

              
          ),
           body: TabBarView(
            children: [
              Tab1(),
              Tab2(),
              Tab3(),
              // Tab4(),
             
            ],
         ),
         
        ),
    );
  }
}
















// // ignore: non_constant_identifier_names
// Widget Tab1(){
//   return SingleChildScrollView(
//     child: Container(
//       child: Column(
//         children: [
  
//           //ROW01
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:<Widget> [
//               Column(
//                 children:<Widget> [
//                   Container(
//                     margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                     child:Text(
//                        "News Feed",
//                        style: TextStyle(
//                          fontSize:25.0 ,fontWeight: FontWeight.w700,
//                          ),
//                          )
//                          ),
//                 ],
//               ),
  
//               Container(
//                 margin: EdgeInsets.all(10.0),
//                 child: Column(
//                   children:<Widget> [
//                     ngActionButton(
//                       backgroundColor: Colors.grey.withOpacity(0.2),
//                       mini: true,
//                       elevation: 0.0,
//                       child: Icon(Icons.search,size: 25,color: Colors.black,),
//                       onPressed: (){},
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),


// /////////////////////////////////////////////////////////////////////////////////


//           Divider(
//                     color: Colors.teal.withOpacity(0.2),
//                     height: 0,
//                     thickness: 2,
//                     indent: 20,
//                     endIndent: 20,
                  
//                   ),
//     //ROW01
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:<Widget> [
//               Column(
//                 children: [
//                   Row(
//                     children:<Widget> [
//                       Container(
//                       width: 40,
//                       height: 40,
//                       margin: EdgeInsets.fromLTRB(20,15,0,0),
//                       decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assests/my.jpg"),
//                         fit: BoxFit.fill,
//                       ),
//                       ),
//                     ),
  
//                     Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 10, 0,0),
//                         child: Text("Ruchira Kavinda",style: TextStyle(
//                           fontSize:18.0 ,fontWeight: FontWeight.w700,)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 0, 0,0),
//                         child: Text("Just Now",style: TextStyle(
//                           fontSize:15.0 ,)),
//                       )
//                     ],
//                     ),
//                    ],
//                  ),
//                 ],
//               ),
  
//             Container(
//               // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
//                     child: IconButton(
//                         icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,),
//                   ),
//                 ],
//               ),
//             )
  
//             ],
//           ),
          
  
//         //ROW02
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 20,10),
//             //  child:
//             // Container(
//             //   constraints: BoxConstraints.expand(
//             //     height: 200.0,
//             //     width: double.infinity
//             //   ),
//             //   decoration: BoxDecoration(
            
//             //     color: Colors.grey,
//             //   ),
//             //   child: Image.asset(
//             //     "assests/girl.png",
//             //     fit: BoxFit.cover,
//             //     ),
            
//             // ),
//             child: Container(
//               width: 350,
//               height: 200.0,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               image: DecorationImage(
//                 image: AssetImage("assests/girl.png"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             ),
//           ),   
//           ],
//         ),
  
//   //ROW03
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.flag,size: 30.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.comment,size: 25.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.share,size: 30.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
  
  
//           ],
//         ),


//  Divider(
//                     color: Colors.black.withOpacity(0.1),
//                     height: 10,
//                     thickness: 2,
//                     indent: 40,
//                     endIndent: 40,
                  
//                   ),

// //ROW04
//         Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:<Widget> [
//               Column(
//                 children: [
//                   Row(
//                     children:<Widget> [
//                       Container(
//                       width: 30,
//                       height: 30,
//                       margin: EdgeInsets.fromLTRB(30,10,0,0),
//                       decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assests/girl.png"),
//                         fit: BoxFit.fill,
//                       ),
//                       ),
//                     ),
  
//                     Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 10, 0,0),
//                         child: Text("Sunny aleska",style: TextStyle(
//                           fontSize:16.0 ,fontWeight: FontWeight.w600,)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 0, 0,0),
//                         child: Text("Just Now",style: TextStyle(
//                           fontSize:13.0 ,fontWeight: FontWeight.w700)),
//                       ),
//                     ],
//                     ),
//                    ],
//                  ),
//                 ],
//               ),
  
           
  
//             ],
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                         padding: const EdgeInsets.fromLTRB(70, 0, 0,20),
//                         child: Text("I need to make body part scrollable.\nHow can i implement that scroll.\n"
//                             "I need to make body part scrollable.",
//                             style: TextStyle(
//                           fontSize:15.0 ,)),
//                       ),
//             ],
//           ),

// //////////////////////////////////////////////////////////////////////////

  
  
//   Divider(
//                     color: Colors.teal.withOpacity(0.2),
//                     height: 0,
//                     thickness: 2,
//                     indent: 20,
//                     endIndent: 20,
                  
//                   ),
//     //ROW01
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:<Widget> [
//               Column(
//                 children: [
//                   Row(
//                     children:<Widget> [
//                       Container(
//                       width: 40,
//                       height: 40,
//                       margin: EdgeInsets.fromLTRB(20,15,0,0),
//                       decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assests/couple.jpg"),
//                         fit: BoxFit.fill,
//                       ),
//                       ),
//                     ),
  
//                     Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 10, 0,0),
//                         child: Text("Mia lisa",style: TextStyle(
//                           fontSize:18.0 ,fontWeight: FontWeight.w700,)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 0, 0,0),
//                         child: Text("Just Now",style: TextStyle(
//                           fontSize:15.0 ,)),
//                       )
//                     ],
//                     ),
//                    ],
//                  ),
//                 ],
//               ),
  
//             Container(
//               // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
//                     child: IconButton(
//                         icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,),
//                   ),
//                 ],
//               ),
//             )
  
//             ],
//           ),
          
  
//         //ROW02
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 20,10),
//             child: Container(
//               width: 350.0,
//               height: 200.0,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               image: DecorationImage(
//                 image: AssetImage("assests/couple.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             ),
//           ),   
//           ],
//         ),
  
//   //ROW03
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.flag,size: 30.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.comment,size: 25.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.share,size: 30.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
  
  
//           ],
//         ),


//  Divider(
//                     color: Colors.black.withOpacity(0.1),
//                     height: 10,
//                     thickness: 2,
//                     indent: 40,
//                     endIndent: 40,
                  
//                   ),

// //ROW04
//         Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:<Widget> [
//               Column(
//                 children: [
//                   Row(
//                     children:<Widget> [
//                       Container(
//                       width: 30,
//                       height: 30,
//                       margin: EdgeInsets.fromLTRB(30,10,0,0),
//                       decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assests/my.jpg"),
//                         fit: BoxFit.fill,
//                       ),
//                       ),
//                     ),
  
//                     Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 10, 0,0),
//                         child: Text("Ruchira Kavinda",style: TextStyle(
//                           fontSize:16.0 ,fontWeight: FontWeight.w600,)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 0, 0,0),
//                         child: Text("Just Now",style: TextStyle(
//                           fontSize:13.0 ,fontWeight: FontWeight.w700)),
//                       ),
//                     ],
//                     ),
//                    ],
//                  ),
//                 ],
//               ),
  
           
  
//             ],
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                         padding: const EdgeInsets.fromLTRB(70, 0, 0,20),
//                         child: Text("I need to make body part scrollable.\nHow can i implement that scroll.",style: TextStyle(
//                           fontSize:15.0 ,)),
//                       ),
//             ],
//           ),

// //////////////////////////////////////////////////////////////////////////
// ///
// ///
//           Divider(
//                     color: Colors.teal.withOpacity(0.2),
//                     height: 0,
//                     thickness: 2,
//                     indent: 20,
//                     endIndent: 20,
                  
//                   ),
//     //ROW01
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:<Widget> [
//               Column(
//                 children: [
//                   Row(
//                     children:<Widget> [
//                       Container(
//                       width: 40,
//                       height: 40,
//                       margin: EdgeInsets.fromLTRB(20,15,0,0),
//                       decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assests/girl.png"),
//                         fit: BoxFit.fill,
//                       ),
//                       ),
//                     ),
  
//                     Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 10, 0,0),
//                         child: Text("Sunny aleska",style: TextStyle(
//                           fontSize:18.0 ,fontWeight: FontWeight.w700,)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 0, 0,0),
//                         child: Text("Just Now",style: TextStyle(
//                           fontSize:15.0 ,)),
//                       )
//                     ],
//                     ),
//                    ],
//                  ),
//                 ],
//               ),
  
//             Container(
//               // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
//                     child: IconButton(
//                         icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,),
//                   ),
//                 ],
//               ),
//             )
  
//             ],
//           ),
          
  
//         //ROW02
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 20,10),
//             child: Container(
//               width: 350.0,
//               height: 200.0,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               image: DecorationImage(
//                 image: AssetImage("assests/girl.png"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             ),
//           ),   
//           ],
//         ),
  
//   //ROW03
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.flag,size: 30.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.comment,size: 25.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
//             Column(
//               children: [
//                 IconButton(
//                     icon:Icon(Icons.share,size: 30.0,color: Colors.black38,), onPressed: () {  } ,),
//               ],
//             ),
  
  
  
//           ],
//         ),


//  Divider(
//                     color: Colors.black.withOpacity(0.1),
//                     height: 10,
//                     thickness: 2,
//                     indent: 40,
//                     endIndent: 40,
                  
//                   ),

// //ROW04
//         Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children:<Widget> [
//               Column(
//                 children: [
//                   Row(
//                     children:<Widget> [
//                       Container(
//                       width: 30,
//                       height: 30,
//                       margin: EdgeInsets.fromLTRB(30,10,0,0),
//                       decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assests/couple.jpg"),
//                         fit: BoxFit.fill,
//                       ),
//                       ),
//                     ),
  
//                     Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 10, 0,0),
//                         child: Text("Mia lisa",style: TextStyle(
//                           fontSize:16.0 ,fontWeight: FontWeight.w600,)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(10, 0, 0,0),
//                         child: Text("Just Now",style: TextStyle(
//                           fontSize:13.0 ,fontWeight: FontWeight.w700)),
//                       ),
//                     ],
//                     ),
//                    ],
//                  ),
//                 ],
//               ),
  
           
  
//             ],
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                         padding: const EdgeInsets.fromLTRB(70, 0, 0,20),
//                         child: Text("I need to make body part scrollable.\nHow can i implement that scroll.",style: TextStyle(
//                           fontSize:15.0 ,)),
//                       ),
//             ],
//           ),

// //////////////////////////////////////////////////////////////////////////      
  
//         ],
//       ),
//     ),
//   );
// }
