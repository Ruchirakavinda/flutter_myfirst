import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Stories extends StatefulWidget {
  const Stories({ Key? key }) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {

final GlobalKey<FormState>_form5 =  GlobalKey<FormState>();
var _find;

  List name=["Ruchira Kavinda","Mia Andrus","Sunny Lisa","Ruchira Kavinda","Ruchira Kavinda","Ruchira Kavinda","Ruchira Kavinda","Ruchira Kavinda"];
  List story = ["assests/girl.png","assests/girl.png","assests/my.jpg","assests/girl.png","assests/girl.png","assests/girl.png","assests/girl.png","assests/girl.png"];
  List img= ["assests/my.jpg","assests/girl.png","assests/girl.png","assests/my.jpg","assests/my.jpg","assests/my.jpg","assests/my.jpg","assests/girl.png"];

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
              Colors.white,
              Colors.white,
              ],
            )
              ),
            ),
            backgroundColor: Colors.teal[700],

            leading: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: IconButton(
                  icon:Icon(Icons.more_time,size: 30.0,color: Colors.black87,), onPressed: () {  
                   
                  },),
                ),
          title:Center(child: Text("Stories",style: TextStyle(fontSize: 25.0,color: Colors.black),)),

          actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                  icon:Icon(MdiIcons.close,size: 30.0,color: Colors.black), onPressed: () { 
                    Navigator.pop(context);
                   } ,
                  ),
                 ),
                ],
 
                
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

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
                height: 1,
                color: Colors.grey[300],
              ),
  


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                            return Column(
                              children: [

                                Container(
                                height: 200,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.teal[800],
                                image: DecorationImage(
                                   fit: BoxFit.cover,
                                   colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                                   image: AssetImage(story[index]),
                                 
                                  ),
                                  
                          ),
                          margin: EdgeInsets.fromLTRB(10,10,10,10),
                          child: Center(
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                         Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(name[index],
                                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                                            maxLines: 5,
                                            softWrap: false,
                                            overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                    width:45.0,
                                    height:45.0,
                                    margin: EdgeInsets.fromLTRB(0,0,10,10),
                                    decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                    image: AssetImage(img[index]),
                                          fit: BoxFit.fill,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 0,
                                          spreadRadius: 3,
                                          offset: Offset(0, 0), // Shadow position
                                        ),
                                      ],
                                    ),
                                  ),
                                    
                                  ],
                                ),
                                ),
                          ),
                              ],
                            );
                        },
                      itemCount:name.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:( 8/ 10)),
                      shrinkWrap: true,
                  ),
                    ),
                
                ],
              ),
            ),
          ),     
      
    );
  }
}