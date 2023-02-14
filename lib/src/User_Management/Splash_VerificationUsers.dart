
import 'package:flutter/material.dart';

class verificationUsers extends StatelessWidget{
  const verificationUsers({Key? key}):super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     body: Container(
        color: Colors.black12,
        child: Stack(
        children:  [
        Positioned.fill(child: Image.asset('assets/image1.jpg',
        fit: BoxFit.cover,))

    ],
    ),

    ),
    );
  }



}