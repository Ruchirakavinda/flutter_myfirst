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
            children: [
              Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            Column(
                              children:<Widget> [
                                Container(
                                  height: 30.0,
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
                            height:50.0,
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

              SizedBox(
                height:200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection:Axis.horizontal,
                  itemBuilder:(context,index) => Container(
                    width: 110,
                    margin: EdgeInsets.all(5),
                    child: Center(
                      child:Text("Card $index"),
                      ),
                    color: Colors.teal[800],
                  ) 
                  ),
              )
            ],
          ),),
      ),
      
    );
  }
}