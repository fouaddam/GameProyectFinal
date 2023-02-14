

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationTxt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedTextKit(
      animatedTexts: [
        RotateAnimatedText('DAM1',
            textStyle: TextStyle(
                fontSize: 30,
                color: Colors.white,
                backgroundColor: Colors.transparent)),
        RotateAnimatedText('APP',
            textStyle: TextStyle(
                letterSpacing: 3,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange)),
        RotateAnimatedText(
          '13',
          textStyle: TextStyle(
            fontSize: 30,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
      isRepeatingAnimation: true,
      totalRepeatCount: 10,
      pause: Duration(milliseconds: 1000),
    );
  }




}