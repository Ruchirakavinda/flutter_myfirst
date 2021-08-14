import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  const Tab3({ Key? key }) : super(key: key);

  @override
  _tab3State createState() => _tab3State();
}

class _tab3State extends State<Tab3> {


final GlobalKey<FormState>_form5 =  GlobalKey<FormState>();
var _notifi;

List req=["Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay","Kevin Gande"];
List conn=["Mia Andrus","Sunny Lisa","Alon ferdus","Sunny Andrus","Suzan Lisa","John Wick","Susi Anderson","Chreed bay","Kevin Gande","Alon ferdus"];
List time = ["Just Now","36 m","57 m","12 h","1 d","2 d","1 w"];


var heightbox = ["260","null"];
var heights=3;
var text2 = "Show all";

    setHeight(){
      if( heights == 3){
        setState(() {

          heights=req.length;
          text2="Show less";
       
      });
      }
      else{
        setState(() {
          heights=3;
          text2="Show all";

      });
      }
    }

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
              "Notifications",
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
                                      print(_notifi);
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
                                  _notifi= text!;
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
                    child:Text("Recent", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                    onPressed: () { setHeight(); },
                    child: Text(text2, 
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600) ,)),
                  ),
                ],
              ),


              Flexible(
                
                child:ListView.separated(
                    separatorBuilder: (context, index) => Container(
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  itemCount: heights,
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
                          image: AssetImage("assests/girl.png"),
                                fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){},
              
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,10,0,5),
                              child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text:req[index], style: TextStyle( color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700)),
                                      TextSpan(text: ' Reprehenderit ut est id ex commodo.', style: TextStyle( color: Colors.black, fontSize: 16)),
                                    
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
                                icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,
                                ),
                              ],
                            ),
                        
                      ),



                    ],
                  )
                  ) 
              ),



                  Container(
                    height: 10,
                    color: Colors.grey[300],
                  ),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,10,0,0),
                    child: Text('Earlier', 
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),
                ],
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
                          image: AssetImage("assests/girl.png"),
                                fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){},
              
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,10,0,5),
                              child: RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text:req[index], style: TextStyle( color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700)),
                                      TextSpan(text: ' Reprehenderit ut est id ex commodo.', style: TextStyle( color: Colors.black, fontSize: 16)),
                                    
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
                                icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,
                                ),
                              ],
                            ),
                        
                      ),



                    ],
                  )
                  ) 
              ),
          ],
        ) ,),
      ),
     );
  }
}
