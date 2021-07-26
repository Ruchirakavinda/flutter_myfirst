import 'package:flutter/material.dart';

class Tab6 extends StatefulWidget {
  const Tab6({ Key? key }) : super(key: key);

  @override
  _Tab6State createState() => _Tab6State();
}

class _Tab6State extends State<Tab6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
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
              ),

              Container(
                height: 10,
                color: Colors.grey[300],
              ),

              SizedBox(
                height:200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection:Axis.horizontal,
                  itemBuilder:(context,index) => Row(
                    children: [

                      Container(
                        width: index==0?110:0.0,
                        margin: EdgeInsets.fromLTRB(10,10, index==0?10:0 ,10),
                        child: Center(
                          child:Column(
                            children: [
                              Text("")
                            ],
                          ),
                          ),
                        color: Colors.black,
                      ),


                      Container(
                        width: 110,
                        margin: EdgeInsets.fromLTRB(0,10,0,10),
                        child: Center(
                          child:Column(
                            children: [
                              Text("Card dgdgfdh $index"),
                              Text("Card dgdgfdh $index"),
                              Text("Card dgdgfdh $index"),
                            ],
                          ),
                          ),
                        color: Colors.teal[800],
                      ),
                    ],
                  ) 
                  ),
              ),

              Container(
                height: 10,
                color: Colors.grey[300],
              ),


              Flexible(
                child:ListView.builder(
                  itemCount: 20,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index)=>ListTile(

                    // leading: Text("hi $index"),
                    leading:Container(
                          width:45.0,
                          height:45.0,
                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                          image: AssetImage('assests/girl.png'),
                                fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){},
                        title: Text("gftgh",style: TextStyle(fontWeight: FontWeight.w500),),
                        subtitle: Text("hgh"),
                        trailing:Column(
                        children: [
                          IconButton(
                            icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,
                            ),
                          ],
                        ),

                  )
                  ) 
              )




            ],
          ),),
      ),
      
    );
  }
}