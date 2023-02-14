



import 'package:flutter/material.dart';

class List_View extends StatelessWidget{

  final List<String> entries = <String>['Comida1', 'Comida2', 'Comida3','comida4','comida5'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(30),
            height: 150,
            child:Stack(

              children: [
                Positioned.fill(
                  child:ClipRRect(
                    borderRadius:BorderRadius.circular(30),
                    child:Image.asset('assets/'+'.jpg',fit:BoxFit.cover,),
                  ),
                ),


                Positioned(
                  bottom: 0,

                  child: Row(
                    children:  [

                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Text("",

                          style: TextStyle(
                              color:Colors.deepOrange,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                      ),

                    ],

                  ),)


              ],
            ),
            //: Center(child: Text('Entry ${entries[index]}')),
          );
        }

    );
  }






}