import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Find extends StatefulWidget {
  const Find({ Key? key }) : super(key: key);

  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {

final GlobalKey<FormState>_form5 =  GlobalKey<FormState>();
var _find;

List req=["Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay","Kevin Gande"];
List conn=["Mia Andrus","Sunny Lisa","Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay","Kevin Gande","Alon ferdus"];
List time = ["Just Now","36 m","57 m","12 h","1 d","2 d","1 w"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: const EdgeInsets.only(left: 0.0),
                  child: IconButton(
                  icon:Icon(MdiIcons.arrowLeftThick,size: 30.0,), onPressed: () {  
                     Navigator.pop(context); 
                  } ,),
                ),
          title:Center(child: Text("SampleApp",style: TextStyle(fontSize: 25.0,),)),

          actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                  icon:Icon(MdiIcons.send,size: 25.0,color: Colors.white.withOpacity(0.0),), onPressed: () {  } ,),
                ),
                ],
 
                
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
              Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:Text(
              "Find people",
              style: TextStyle(
              fontSize:25.0 ,fontWeight: FontWeight.w700,
              ),
              )
            ),

            Container(
              child: Form(
                key:_form5,
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
                                       if(_form5.currentState!.validate()){
                                      _form5.currentState!.save();
                                      print(_find);
                                    }
                                    },
                                  icon:Icon(Icons.search_outlined,
                                  size: 25,
                                  color: Colors.black.withOpacity(0.6),),),
                                  border: InputBorder.none,
                                  hintText: 'Search for connect...',
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
                                  _find =text!;
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
                    padding: const EdgeInsets.fromLTRB(20,20,0,10),
                    child:Text('People you may know', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  
                ],
              ),


              SizedBox(
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
                  itemCount: req.length,
                  scrollDirection:Axis.vertical,
                  itemBuilder:(context,index) => Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,5,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ignore: deprecated_member_use
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
                                    style:TextStyle(color: Colors.black54)),

                                    // Text(time[index],
                                    // style:TextStyle(color: Colors.black54)),

                                  ],
                                ),
                              )         
                              ],
                            ), 
                        ),

                        Container(
                                margin: EdgeInsets.fromLTRB(0,0,0,0),
                                child: Row(
                                  children:<Widget> [
                                   Material(
                                      type: MaterialType.transparency, //Makes it usable on any background color, thanks @IanSmith
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white, width: 0.0),
                                          color: Colors.teal[900],
                                          borderRadius: BorderRadius.circular(10),
                                         
                                        ),
                                        child: InkWell(
                                          //This keeps the splash effect within the circle
                                          borderRadius: BorderRadius.circular(0.0), //Something large to ensure a circle
                                          onTap: (){},
                                          child: Padding(
                                            padding:EdgeInsets.fromLTRB(20,10,20,10),
                                            child: Text("Connect", 
                                            style:TextStyle(color: Colors.white) ,),
                                          ),
                                        ),
                                      )
                                    ),


                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FloatingActionButton(
                                        heroTag: index,
                                        backgroundColor: Colors.black12,
                                        mini: true,
                                        elevation: 0.0,
                                        child: Icon(MdiIcons.accountMinus,size: 20,
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
              








                ],
              ),
            ),
          ),




          
      
    );
  }
}