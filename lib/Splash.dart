


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:proyectofinal/main.dart';
import 'package:proyectofinal/src/Costum_views/AnimationText.dart';
import 'package:proyectofinal/src/Costum_views/AppBar_view.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:proyectofinal/src/singelton/DataHolder.dart';

class Splash extends StatelessWidget{

    final int duration;
    final  String Go_to;
    Splash({Key? key, required this.duration, required this.Go_to}):super(key:key);


  @override
  Widget build(BuildContext context) {

        Future.delayed(Duration(seconds:this.duration), (){
          Navigator.of(context).popAndPushNamed(this.Go_to);

        });
    // TODO: implement build
    return Scaffold(
          backgroundColor:Colors.white24,
           body:Center(

             child:  CircularPercentIndicator(
               radius: 120.0,
               lineWidth:30.0 ,
               percent: 100/100,
               animation: true,
               animationDuration: 3000,
               backgroundColor: Colors.purple,

               center: AnimationTxt(),

               progressColor: Colors.orange,
             ),


           )

             );



  }

}