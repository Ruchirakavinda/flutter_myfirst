import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  const Tab2({ Key? key }) : super(key: key);

  @override
  _tab2State createState() => _tab2State();
}

class _tab2State extends State<Tab2> {

final GlobalKey<FormState>_form4 =  GlobalKey<FormState>();
var _connections;

List req=["Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay","Kevin Gande"];
List conn=["Mia Andrus","Sunny Lisa","Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay","Kevin Gande","Alon ferdus"];
List time = ["Just Now","36 m","57 m","12 h","1 d","2 d"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:Text(
              "Community",
              style: TextStyle(
              fontSize:25.0 ,fontWeight: FontWeight.w700,
              ),
              )
            ),

            Container(
              child: Form(
                key:_form4 ,
                child:Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,10,10,10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50), // if you need this
                      side: BorderSide(
                        color: Colors.white.withOpacity(0.5),
                        width: 1,
                      ),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10,0,20,0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.black54),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person_search,
                                    color: Colors.black.withOpacity(0.2),),
                                    suffixIcon: IconButton(
                                    onPressed: (){
                                       if(_form4.currentState!.validate()){
                                      _form4.currentState!.save();
                                      print(_connections);
                                    }
                                    },
                                  icon:Icon(Icons.search_outlined,
                                  size: 25,
                                  color: Colors.black.withOpacity(0.6),),),
                                  border: InputBorder.none,
                                  hintText: 'Search connections...',
                                  hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.2), 
                                    
                                    fontSize: 18),
                                  
                                ),
                                validator: (text){
                                  if(text!.isEmpty){
                                  return null;
                                }
                                return null;
                              },

                                onSaved: (text){
                                  _connections= text!;
                                },
                                ),
                            )
                          ],
                        ),
                    ), 
                  ),
                ), 
               ), 
               ),
            ),


            Container(
                height: 10,
                color: Colors.grey[300],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child:Text('${req.length} Requests', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                    onPressed: () {  },
                    child: Text('Show all', 
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600) ,)),
                  ),
                ],
              ),


              SizedBox(
                height:350,
                child: ListView.separated(
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                      height: 2,
                      color: Colors.grey[200],
                  ),
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection:Axis.vertical,
                  itemBuilder:(context,index) => Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,5,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                        onPressed: () {  },
                          child: 
                            Row(
                              children: [
                                Container(
                                          width:60.0,
                                          height:60.0,
                                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                                          decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                          image: AssetImage("assests/girl.png"),
                                                fit: BoxFit.fill,
                                            ),
                                      ),
                                  ),

                                Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(req[index],
                                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                                   
                                    Text('United States',
                                    style:TextStyle(color: Colors.black87)),

                                    Text(time[index],
                                    style:TextStyle(color: Colors.black54)),

                                  ],
                                ),
                              )         
                              ],
                            ), 
                        ),

                        Container(
                                margin: EdgeInsets.all(0.0),
                                child: Row(
                                  children:<Widget> [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.teal[800],
                                        mini: true,
                                        elevation: 0.0,
                                        child: Icon(Icons.done,size: 20,
                                        color: Colors.white,),
                                        onPressed: (){},
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.black12,
                                        mini: true,
                                        elevation: 0.0,
                                        child: Icon(Icons.close,size: 20,
                                        color: Colors.teal[900],),
                                        onPressed: (){},
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                      ],
                    ),
                  ),                  
                  ), 
                ),



              Container(
                height: 10,
                color: Colors.grey[300],
              ),



                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Text(' All connections', 
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                    onPressed: () {  },
                    child: Text('${conn.length}', 
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                    ),
                  ),
                ],
              ),


              Flexible(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                      height: 2,
                      color: Colors.grey[200],
                  ),
                    ),
                  itemCount: conn.length,
                  scrollDirection:Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index) => Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,5,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                        onPressed: () {  },
                          child: 
                            Row(
                              children: [
                                Container(
                                          width:60.0,
                                          height:60.0,
                                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                                          decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                          image: AssetImage("assests/girl.png"),
                                                fit: BoxFit.fill,
                                            ),
                                      ),
                                  ),

                                Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(conn[index],
                                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                                    Text('Just now',
                                    style:TextStyle(color: Colors.black54)),


                                  ],
                                ),
                              )         
                              ],
                            ), 
                        ),

                        Container(
                                margin: EdgeInsets.all(0.0),
                                child: Row(
                                  children:<Widget> [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.teal[800],
                                        mini: true,
                                        elevation: 0.0,
                                        child: Icon(Icons.done,size: 25,
                                        color: Colors.white,),
                                        onPressed: (){},
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.black12,
                                        mini: true,
                                        elevation: 0.0,
                                        child: Icon(Icons.close,size: 25,
                                        color: Colors.teal[900],),
                                        onPressed: (){},
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                      ],
                    ),
                  )
                  
                  //ListTile(
                  //       leading:Container(
                  //             width:45.0,
                  //             height:45.0,
                  //             margin: EdgeInsets.fromLTRB(0,0,0,0),
                  //             decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             image: DecorationImage(
                  //             image: AssetImage("assests/girl.png"),
                  //                   fit: BoxFit.fill,
                  //               ),
                  //             ),
                  //           ),
                  //           onTap: (){},
                  //           title: Text('Ruchira kavinda',style: TextStyle(fontWeight: FontWeight.w500),),
                  //           subtitle: Text('Just now'),
                  //           trailing:Column(
                  //           children: [
                  //             IconButton(
                  //               icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,
                  //               ),
                  //             ],
                  //           ),
                  //     ),
                  ), 
                ),
          ],
        ) ,),
      ),

      floatingActionButton: new FloatingActionButton(
      elevation:5,
      child: new Icon(Icons.person_add_alt),
      backgroundColor: Colors.teal[800],
      onPressed: (){}
    )
     );
  }
}