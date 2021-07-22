import 'package:flutter/material.dart';
import 'tabs.dart';
// import 'package:flutter/rendering.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 4,
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
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                  icon:Icon(Icons.menu,size: 30.0,), onPressed: () {  } ,),
                ),
            title:Text("My First",style: TextStyle(fontSize: 25.0,),),
            
            // leading: IconButton(
            //   icon:Icon(Icons.menu,size: 30.0,), onPressed: () {  } ,),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                  icon:Icon(Icons.message_sharp,size: 25.0,color: Colors.white.withOpacity(0.9),), onPressed: () {  } ,),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10.0),
                //   child: CircleAvatar(
                //     radius: 15.0,
                //     backgroundImage: AssetImage(
                //       "assests/girl.png"),
                //       ),
                //       ),
                ],
              
                      
                // flexibleSpace: Image.asset(
                //   "assests/wb.jpg",fit: BoxFit.cover,
                //   ),
                  bottom: TabBar(
                    
                    indicatorWeight: 5.0,
                    indicatorColor: Colors.white,
                    labelColor:Colors.white,
                    unselectedLabelColor: Colors.white70,
                    // indicator: BoxDecoration(
                    // // gradient: LinearGradient(
                    // //     colors: [Colors.redAccent, Colors.orangeAccent]),
                    // color: Colors.white,
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10),
                    //     topRight: Radius.circular(10)),
                    // // color: Colors.redAccent
                    // ),
                    tabs: [
                      Tab(text: 'Home',icon: Icon(Icons.home,size: 22.0,),),
                      Tab(text: 'Profile',icon: Icon(Icons.person_rounded,size: 22.0,),),
                      Tab(text: 'Notifications',icon: Icon(Icons.notifications,size: 22.0,),),
                      Tab(text: 'Library',icon: Icon(Icons.library_books,size: 22.0,),),
                      
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
//                     FloatingActionButton(
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
