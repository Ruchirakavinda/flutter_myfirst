import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myfirst/home.dart';

class Msg extends StatefulWidget {
  const Msg({ Key? key }) : super(key: key);

  @override
  _MsgState createState() => _MsgState();
}

class _MsgState extends State<Msg> {

final GlobalKey<FormState>_form6 =  GlobalKey<FormState>();
var _msg;

List req=["Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay","Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay"];
List usrs= ["assests/u1.png","assests/u2.jpg","assests/my.jpg","assests/u3.jpg","assests/u4.jpg","assests/u5.jpg","assests/u1.png","assests/u2.jpg","assests/my.jpg","assests/u3.jpg","assests/u4.jpg","assests/u5.jpg"];
List time=["Just Now","36 m","57 m","12 h","1 d","2 d","Just Now","36 m","57 m","12 h","1 d","2 d"];

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
                  icon:Icon(MdiIcons.video,size: 30.0,color: Colors.white.withOpacity(0.9),), onPressed: () {  } ,),
                ),
                ],
 
                
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
              Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:Text(
              "Messages",
              style: TextStyle(
              fontSize:25.0 ,fontWeight: FontWeight.w700,
              ),
              )
            ),

            Container(
              child: Form(
                key:_form6,
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
                                    color: Colors.black.withOpacity(0.3),),
                                    suffixIcon: IconButton(
                                    onPressed: (){
                                       if(_form6.currentState!.validate()){
                                      _form6.currentState!.save();
                                      print(_msg);
                                    }
                                    },
                                  icon:Icon(Icons.search_outlined,
                                  size: 25,
                                  color: Colors.black.withOpacity(0.6),),),
                                  border: InputBorder.none,
                                  hintText: 'Search for connect...',
                                  hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.3), 
                                    
                                    fontSize: 16),
                                  
                                ),
                                validator: (text){
                                  if(text!.isEmpty){
                                  return null;
                                }
                                return null;
                              },

                                onSaved: (text){
                                  _msg =text!;
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


           Flexible(
                
                child:ListView.separated(
                    separatorBuilder: (context, index) => Container(
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  itemCount: req.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index)=>Column(
                    children: [
                      



                      ListTile(
                        leading:Container(
                          width:60.0,
                          height:60.0,
                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                          image: AssetImage(usrs[index]),
                                fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> MyHome()));
                        },
                        title: Text(req[index],style: TextStyle(fontWeight: FontWeight.w700),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,0,5),
                              child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: 'Reprehenderit ut est id ex commodo.', style: TextStyle( color: Colors.black,fontSize: 16)),
                                    
                                    ],
                                  ),
                                )
                            ),
                            Text(time[index]),
                          ],
                        ),
                         trailing:Column(
                            children: [
                              IconButton(
                                icon:Icon(Icons.call,size: 25.0,color:Colors.teal[800],), onPressed: () {  } ,
                                ),
                              ],
                            ),
                        
                      ),



                    ],
                  )
                  ) 
              ),
              








                ],
              ),
            ),
          ),



      floatingActionButton: new FloatingActionButton(
      heroTag: "add",
      elevation:5,
      child: new Icon(Icons.add),
      backgroundColor: Colors.teal[800],
      onPressed: (){
       
      }
    )

          
      
    );
  }
}