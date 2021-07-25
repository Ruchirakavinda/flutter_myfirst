import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({ Key? key }) : super(key: key);

  @override
  _tab1State createState() => _tab1State();
}

class _tab1State extends State<Tab1> {

  List items=["Ruchira Kavinda","Mia Andrus","Sunny Lisa"];
  List items2 = ["Just Now","36 m","12 h"];
  List img= ["assests/my.jpg","assests/girl.png","assests/girl.png"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(
                itemCount:items.length,
                itemBuilder:(context, index)
                
                {
                  return Column(
                    children: [

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget> [
                        Column(
                          children:<Widget> [
                            Container(
                              height: index==0?40:0.0,
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child:Text(
                                "News Feed",
                                style: TextStyle(
                                  fontSize:25.0 ,fontWeight: FontWeight.w700,
                                  ),
                                  )
                                  ),
                          ],
                        ),
                      Container(
                        height: index==0?50:0.0,
                          margin: EdgeInsets.all(10.0),
                          child: Column(
                            children:<Widget> [
                              FloatingActionButton(
                                backgroundColor: Colors.grey.withOpacity(0.2),
                                mini: true,
                                elevation: 0.0,
                                child: Icon(Icons.search,size: 25,color: Colors.black,),
                                onPressed: (){},
                              ),
                            ],
                          ),
                        ),

                      ],
                      ),



                      ListTile(
                        leading:Container(
                          width:45.0,
                          height:45.0,
                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                          image: AssetImage(img[index]),
                                fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){},
                        title: Text(items[index],style: TextStyle(fontWeight: FontWeight.w500),),
                        subtitle: Text(items2[index]),
                        trailing:Column(
                        children: [
                          IconButton(
                            icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,
                            ),
                          ],
                        ),
                      ),

                      ListTile(
                      title : Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                        image: AssetImage(img[index]),
                        fit: BoxFit.cover,
                        ),
                      ),
                      ),
                      ),


                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,20,20,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text("251"),
                                  Text(" Stars")
                                ],
                              ),
                            ),

                            Container(
                              child: Row(
                                children: [
                                  Text("51"),
                                  Text(" Comments")
                                ],
                              ),
                            ),

                            Container(
                              child: Row(
                                children: [
                                  Text("25"),
                                  Text(" Shares")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                      Divider(),


                      Padding(
                        padding: EdgeInsets.fromLTRB(20,0,20,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.star,size: 30,color: Colors.black54,)),

                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.comment,size: 30,color: Colors.black54,)),

                            IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.share,size: 30,color: Colors.black54,))
                          ],

                          
                        ),
                      ),

                      Divider(),


                      ListTile(
                        leading:Container(
                          width:35.0,
                          height:35.0,
                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                          image: AssetImage(img[index]),
                                fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){},
                        title: Text(items[index],style: TextStyle(fontWeight: FontWeight.w500),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(items2[index]),
                            SizedBox(height: 10,),
                            Text('I need to make body part scrollable.\nHow can i implement that scroll.',style: TextStyle(fontSize: 16,color: Colors.black),)
                          ],
                        ),
                        
                      ),

                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class Tab2 extends StatefulWidget {
  const Tab2({ Key? key }) : super(key: key);

  @override
  _tab2State createState() => _tab2State();
}

class _tab2State extends State<Tab2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Center(
      child: Text("Profile Page"),
      ),
      
  ),
    );
  }
}




class Tab3 extends StatefulWidget {
  const Tab3({ Key? key }) : super(key: key);

  @override
  _tab3State createState() => _tab3State();
}

class _tab3State extends State<Tab3> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Center(
      child: Text("Notifications Page"),
      ),
      
  ),
    );
  }
}



class Tab4 extends StatefulWidget {
  const Tab4({ Key? key }) : super(key: key);

  @override
  _tab4State createState() => _tab4State();
}

class _tab4State extends State<Tab4> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Center(
      child: Text("Library Page"),
      ),
      
  ),
    );
  }
}