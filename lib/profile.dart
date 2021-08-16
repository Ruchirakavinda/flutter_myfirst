import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

final GlobalKey<FormState>_form11 =  GlobalKey<FormState>();
var _prof;

 List name=["Ruchira Kavinda","Mia Andrus","Sunny Lisa"];
  List time = ["Just Now","36 m","57 m","12 h","1 d","2 d"];
  List img= ["assests/my.jpg","assests/girl.png","assests/girl.png"];
  List story = ["assests/girl.png","assests/girl.png","assests/my.jpg"];
List high=["assests/my.jpg","assests/girl.png","assests/my.jpg","assests/girl.png","assests/my.jpg","assests/girl.png",];
static const user = 'assests/my.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            
            backgroundColor: Colors.white,

            leading: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: IconButton(
                  icon:Icon(MdiIcons.arrowLeftThick,size: 30.0,color: Colors.black,), onPressed: () {  
                     Navigator.pop(context); 
                  } ,),
                ),
          title:Center(child: Text('Ruchira Kavinda',style: TextStyle(fontSize: 20.0,color: Colors.black),)),

          actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                  icon:Icon(Icons.settings,size: 25.0,color: Colors.black,), onPressed: () {  } ,),
                ),
                ],
 
                
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                margin: EdgeInsets.fromLTRB(0,0,0,0),
                  decoration: BoxDecoration(
                    boxShadow: [
                        BoxShadow(
                        color:Colors.black54,
                        blurRadius: 20,
                        spreadRadius: 5,
                        offset: Offset(0, 0),)
                      ] ,
                  image: DecorationImage(
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2),BlendMode.darken),
                  image: AssetImage("assests/cover.jpg"),
                  fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                          width:130.0,
                          height:130.0,
                          margin: EdgeInsets.fromLTRB(20,0,10,0),
                          transform: Matrix4.translationValues(0.0, 50.0, 0.0),
                          decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                            color:Colors.white,
                            blurRadius: 0,
                            spreadRadius: 5,
                            offset: Offset(0, 0),)
                          ] ,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                          image: AssetImage(user),
                          fit: BoxFit.fill,
                          ),
                          ),
                        ),

                       Container(
                         margin: EdgeInsets.fromLTRB(0,0,30,0),
                         transform: Matrix4.translationValues(0.0, 30.0, 0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text("Connections",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w900),),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("256",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text("Posts",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w900),),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("256",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        

                      

                     ],
                   ),
                ],
                ),
                
              ),

              SizedBox(
              height: 50,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ruchira Kavinda',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),

                        FlatButton(onPressed: (){}, 
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){}, 
                              icon: Icon(Icons.edit,size: 15,color: Colors.teal[800],)),
                              Text("Edit", style: TextStyle(color: Colors.teal[800]),),
                              
                            ],
                          ),
                          )
                      ],
                    ),
                    
                    Text('Proident amet aliqua eiusmod incididunt eiusmod aute ullamco mollit voluptate.',style: TextStyle(fontSize: 16,color: Colors.black),
                        maxLines: 15,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),


                      Container(
                        height: 1,
                        margin: EdgeInsets.fromLTRB(0,20,0,10),
                        color: Colors.grey[300],
                      ),

                  ],
                ),
              ),

              Column(
                children: [
                  

         
            ListTile(
            leading: Icon(Icons.work_rounded,size: 25,color: Colors.black54,),
            title: RichText(
             text: TextSpan(
             children: <TextSpan>[
             TextSpan(text: "UI /UX Lead at ", style: TextStyle( color: Colors.black,fontSize: 16)),
                TextSpan(text: 'Sequence Creators', style: TextStyle( color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)),
                                    
              ],
             ),
             maxLines: 15,
             softWrap: false,
             overflow: TextOverflow.ellipsis,
           ),
            onTap:(){ 
            },
          ),


          ListTile(
            leading: Icon(Icons.admin_panel_settings,size: 25,color: Colors.black54,),
            title: RichText(
             text: TextSpan(
             children: <TextSpan>[
             TextSpan(text: "Admin at ", style: TextStyle( color: Colors.black,fontSize: 16)),
                TextSpan(text: 'Consectetur voluptate ipsum ', style: TextStyle( color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)),
                                    
              ],
             ),
             maxLines: 15,
             softWrap: false,
             overflow: TextOverflow.ellipsis,
           ),
            onTap:(){ 
            },
          ),
          
           ListTile(
            leading: Icon(Icons.school,size: 25,color: Colors.black54,),
            title: RichText(
             text: TextSpan(
             children: <TextSpan>[
             TextSpan(text: "Studies Management of Information Systems at", style: TextStyle( color: Colors.black,fontSize: 16)),
                TextSpan(text: ' NSBM Green University Town', style: TextStyle( color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)),
                                    
              ],
             ),
             maxLines: 15,
             softWrap: false,
             overflow: TextOverflow.ellipsis,
           ),
            onTap:(){ 
            },
          ),

          ListTile(
            leading: Icon(Icons.location_city,size: 25,color: Colors.black54,),
            title: RichText(
             text: TextSpan(
             children: <TextSpan>[
             TextSpan(text: "Went to", style: TextStyle( color: Colors.black,fontSize: 16)),
                TextSpan(text: ' B/Dharmapala College Bandarawela', style: TextStyle( color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)),
                                    
              ],
             ),
             maxLines: 15,
             softWrap: false,
             overflow: TextOverflow.ellipsis,
           ),
            onTap:(){ 
            },
          ),


           ListTile(
            leading: Icon(Icons.location_on,size: 25,color: Colors.black54,),
            title: RichText(
             text: TextSpan(
             children: <TextSpan>[
             TextSpan(text: "From", style: TextStyle( color: Colors.black,fontSize: 16)),
                TextSpan(text: ' Ella Town, Sri Lanka', style: TextStyle( color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold)),
                                    
              ],
             ),
             maxLines: 15,
             softWrap: false,
             overflow: TextOverflow.ellipsis,
           ),
            onTap:(){ 
            },
          ),
          
                ],
              ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Text('Highlights', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    // ignore: deprecated_member_use
                    child: IconButton(onPressed: (){}, 
                              icon: Icon(Icons.add_box,size: 30,color: Colors.teal[800],)))
                 
                ],
              ),





              
               SizedBox(
                height:130,
                child: ListView.builder(
                  itemCount: high.length,
                  scrollDirection:Axis.horizontal,
                  itemBuilder:(context,index) => Row(
                    children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,10,10,0),
                                child: Column(
                                  children: [
                                    Container(
                                    width:70.0,
                                    height:70.0,
                                    margin: EdgeInsets.fromLTRB(0,0,0,0),
                                    decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                    image: AssetImage(high[index]),
                                          fit: BoxFit.fill,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 8,
                                          spreadRadius: 1,
                                          offset: Offset(5, 5), // Shadow position
                                        ),
                                      ],
                                    
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Highlight"),
                          )
                        ],
                      ),
                              ),
                     
                    ],
                  ) 
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
                    child: Text('Posts', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    // ignore: deprecated_member_use
                    child: IconButton(onPressed: (){}, 
                              icon: Icon(Icons.add_box,size: 30,color: Colors.teal[800],)))
                 
                ],
              ),


               Flexible(
                child:ListView.separated(
                    separatorBuilder: (context, index) => Container(
                    height: 10,
                    color: Colors.grey[300],
                  ),
                  itemCount: name.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index)=>Column(
                    children: [
                      ListTile(
                        leading:Container(
                              width:45.0,
                              height:45.0,
                              margin: EdgeInsets.fromLTRB(0,0,0,0),
                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                              image: AssetImage(user),
                                    fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            onTap: (){},
                            title: Text("Ruchira Kavinda",style: TextStyle(fontWeight: FontWeight.w500),),
                            subtitle: Text(time[index]),
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
                              icon: Icon(MdiIcons.heartMultiple,size: 25,color: Colors.black54,)),

                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(MdiIcons.tooltipText,size: 25,color: Colors.black54,)),

                            IconButton(
                            onPressed: (){}, 
                            icon: Icon(MdiIcons.shareAll,size: 30,color: Colors.black54,))
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
                        title: Text(name[index],style: TextStyle(fontWeight: FontWeight.w500),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(time[index]),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,10,0,10),
                              child: Text('I need to make body part scrollable.How can i implement that scroll.',style: TextStyle(fontSize: 16,color: Colors.black),
                               maxLines: 15,
                               softWrap: false,
                               overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        
                      ),



                    ],
                  )
                  ) 
              )

                ],
              ),
            ),
          ),




          
      
    );
  }
}