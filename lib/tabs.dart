import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({ Key? key }) : super(key: key);

  @override
  _tab1State createState() => _tab1State();
}

class _tab1State extends State<Tab1> {

  List items=["Ruchira","Kavinda"];
  List items2 = ["Just Now","36 m"];
  List img= ["assests/my.jpg","assests/girl.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Column(
                children:<Widget> [
                  Container(
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


            Expanded(
              child: ListView.builder(
                itemCount:items.length,
                itemBuilder:(context, index)
                {
                  return Column(
                    children: [
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