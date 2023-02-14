



import 'package:flutter/material.dart';
import 'package:proyectofinal/src/Costum_views/AppBar_view.dart';
import 'package:proyectofinal/src/singelton/DataHolder.dart';

class ServiceHome1 extends StatefulWidget{


  @override
  State<ServiceHome1> createState() => _ServiceHome1State();
}

class _ServiceHome1State extends State<ServiceHome1> {

  AppbarView appbar1=AppbarView(title:"Service 1");
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(DataHolder().serviceClass.name!),
      ),
      body:Column(
        children: [

        ],
      )
    );
  }
}