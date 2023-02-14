import 'package:flutter/material.dart';

class AppbarView extends StatelessWidget{

  final String title;

    AppbarView( {Key? key, required this.title}): super (key:key);

  @override
  Widget build(BuildContext context) {

    return AppBar(

            backgroundColor: Colors.pink.shade400,

            toolbarHeight: 100,

            elevation: 14,

            shape: RoundedRectangleBorder(

                borderRadius:

                BorderRadius.only(bottomRight: Radius.circular(70),bottomLeft: Radius.circular(70))

            ),

            title: Text(title),

            actions: [

              Row(

                children: [

                  Container(

                    height: 40,width: 40,

                    alignment: Alignment.center,

                    decoration: BoxDecoration(

                        boxShadow: [

                          BoxShadow(blurRadius: 7,spreadRadius: 3,

                              color: Colors.pink

                          )

                        ],

                        shape: BoxShape.circle,

                        color: Colors.pink.shade400

                    ),

                    child: Icon(Icons.search,size: 20,

                    ),

                  ),

                  SizedBox(width: 10,),

                  Container(

                    height: 40,width: 40,

                    alignment: Alignment.center,

                    decoration: BoxDecoration(

                        boxShadow: [

                          BoxShadow(blurRadius: 7,spreadRadius: 3,

                              color: Colors.pink

                          )

                        ],

                        shape: BoxShape.circle,

                        color: Colors.pink.shade400

                    ),

                    child: Icon(Icons.notifications,size: 20,

                    ),

                  ),

                  SizedBox(width: 10,),  Container(

                    height: 40,width: 40,

                    alignment: Alignment.center,

                    decoration: BoxDecoration(

                        boxShadow: [

                          BoxShadow(blurRadius: 7,spreadRadius: 3,

                              color: Colors.pink

                          )

                        ],

                        shape: BoxShape.circle,

                        color: Colors.pink.shade400

                    ),

                    child: Icon(Icons.logout,size: 20,

                    ),

                  ),

                  SizedBox(width: 26,)

                ],

              )

            ],

          );


  }


}