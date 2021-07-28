import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  const Tab2({ Key? key }) : super(key: key);

  @override
  _tab2State createState() => _tab2State();
}

class _tab2State extends State<Tab2> {
final GlobalKey<FormState>_form4 =  GlobalKey<FormState>();
var _connections;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:Text(
              "Community",
              style: TextStyle(
              fontSize:25.0 ,fontWeight: FontWeight.w700,
              ),
              )
            ),

            Container(
              child: Form(
                key:_form4 ,
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
                                       if(_form4.currentState!.validate()){
                                      _form4.currentState!.save();
                                      print(_connections);
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
                                  return null;
                                },

                                onSaved: (text){
                                  _connections= text!;
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
                    child: Text('Requests', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                    onPressed: () {  },
                    child: Text('Show all', 
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600) ,)),
                  ),
                ],
              ),


              SizedBox(
                height:300,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection:Axis.vertical,
                  itemBuilder:(context,index) => ListTile(
                        leading:Container(
                              width:45.0,
                              height:45.0,
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
                            title: Text('Ruchira kavinda',style: TextStyle(fontWeight: FontWeight.w500),),
                            subtitle: Text('Just now'),
                            trailing:Column(
                            children: [
                              IconButton(
                                icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,
                                ),
                              ],
                            ),
                      ),
                  ) 
                ),
          ],
        ) ,),
      ),
     );
  }
}