import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myfirst/messages.dart';
import 'package:myfirst/stories.dart';

class Tab1 extends StatefulWidget {
  const Tab1({ Key? key }) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {

  List name=["Jhon Wick","Susan Andrusan","Ruchira Kavinda","Mia Andrus","Sunny Lisa","William Felker"];
  List time = ["Just Now","36 m","57 m","12 h","1 d","2 d"];
  List usrs= ["assests/u1.png","assests/u2.jpg","assests/my.jpg","assests/u3.jpg","assests/u4.jpg","assests/u5.jpg"];
  List img = ["assests/img2.jpg","assests/img1.jpg","assests/img3.jpg","assests/img4.jpeg","assests/img5.jpg","assests/img6.jpg"];
  static const user = 'assests/my.jpg';


  void handleClick(int item) {
  switch (item) {
    case 3:
       Navigator.push(context, 
       MaterialPageRoute(builder: (context)=> Msg()));
       break;
  }
}

  final GlobalKey<FormState>_form10 =  GlobalKey<FormState>();
  var _accounts;




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
                                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                    child:Text(
                                      "News Feed",
                                      style: TextStyle(
                                        fontSize:25.0 ,fontWeight: FontWeight.w700,
                                        ),
                                        )
                                        ),
                                        
                                ],
                              ),
                            // Container(
                            //     margin: EdgeInsets.all(10.0),
                            //     child: Column(
                            //       children:<Widget> [
                            //         FloatingActionButton(
                            //           backgroundColor: Colors.grey.withOpacity(0.2),
                            //           mini: true,
                            //           elevation: 0.0,
                            //           child: Icon(Icons.search,size: 25,color: Colors.black,),
                            //           onPressed: (){},
                            //         ),
                            //       ],
                            //     ),
                            //   ),

                            ],
                ),
              ),
              Container(
              child: Form(
                key:_form10 ,
                child:Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,5,10,10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50), 
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
                                autofocus: false,
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.black54),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.image_search_outlined,
                                    color: Colors.black.withOpacity(0.3),),
                                    suffixIcon: IconButton(
                                    onPressed: (){
                                       if(_form10.currentState!.validate()){
                                      _form10.currentState!.save();
                                      print(_accounts);
                                    }
                                    },
                                  icon:Icon(Icons.search_outlined,
                                  size: 25,
                                  color: Colors.black.withOpacity(0.6),),),
                                  border: InputBorder.none,
                                  hintText: 'Search...',
                                  hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.3), 
                                    
                                    fontSize: 16),
                                  
                                ),
                                validator: (text){
                                  return null;
                                },

                                onSaved: (text){
                                  _accounts= text!;
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
                    child: Text('Stories', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> Stories()));
                      },
                    child: Text('Show all', 
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600) ,)),
                  ),
                ],
              ),

              SizedBox(
                height:200,
                child: ListView.builder(
                  itemCount: name.length,
                  scrollDirection:Axis.horizontal,
                  itemBuilder:(context,index) => Row(
                    children: [

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal[900],
                        image: DecorationImage(
                          image: AssetImage(user),
                          fit: BoxFit.cover
                          ),
                        ),
                        width: index==0?110:0.0,
                        margin: EdgeInsets.fromLTRB(10,10, index==0?10:0 ,10),
                        child: Center(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                              width:45.0,
                              height:45.0,
                              margin: EdgeInsets.fromLTRB(0,0,0,0),
                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add_a_photo),
                                color: Colors.teal[900],
                                onPressed: () {},
                              ),
                            ),
                            ],
                          ),
                          ),
                        
                      ),


                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal[800],
                          image: DecorationImage(
                             fit: BoxFit.cover,
                             colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                             image: AssetImage(img[index]),
                           
                            ),
                            
                        ),
                        
                        width: 110,
                        margin: EdgeInsets.fromLTRB(0,10,0,10),
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
                              image: AssetImage(usrs[index]),
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
                    child: Text('Activities', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,10,0),
                    // ignore: deprecated_member_use
                    child:  PopupMenuButton<int>(
                    icon: Icon(Icons.filter_list),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    onSelected: (item) => handleClick(item),
                    itemBuilder: (context) => [
                      PopupMenuItem<int>(
                        value: 0,
                        child:Text("Friends"),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text("Friends of friends"),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text("Only me"),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Text("Archived"),
                      ),
                    ],
                  ),
                        
                  ),
                ],
              ),
               Container(
                height: 10,
                color: Colors.grey[300],
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
                              image: AssetImage(usrs[index]),
                                    fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            onTap: (){},
                            title: Text(name[index],style: TextStyle(fontWeight: FontWeight.w500),),
                            subtitle: Text(time[index]),
                            trailing:Column(
                            children: [
                             Container(
                               child: PopupMenuButton<int>(
                    icon: Icon(Icons.more_horiz,size: 30,),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    onSelected: (item) => handleClick(item),
                    itemBuilder: (context) => [
                      PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(Icons.save,size: 22,),SizedBox(width: 10,),
                            Text("Save post"),
                          ],
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(Icons.hide_image,size: 22,),SizedBox(width: 10,),
                            Text("Hide post"),
                          ],
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(Icons.notifications_off,size: 22,),SizedBox(width: 10,),
                            Text("Turn off notifications"),
                          ],
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(Icons.report,size: 22,),SizedBox(width: 10,),
                            Text("Report"),
                          ],
                        ),
                      ),
                    ],
                  ),
                             )
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
                              child: Text('Culpa tempor sunt tempor nostrud cupidatat mollit elit consectetur enim reprehenderit et.',style: TextStyle(fontSize: 16,color: Colors.black),
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
          ),),
      ),
      floatingActionButton: new FloatingActionButton(
      heroTag: "add",
      elevation:5,
      child: new Icon(Icons.add_photo_alternate_outlined),
      backgroundColor: Colors.teal[800],
      onPressed: (){}
    )
      
    );
  }
}