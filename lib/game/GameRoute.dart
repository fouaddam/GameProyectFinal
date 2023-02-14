



import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'SplasheFlame.dart';
import 'package:flame/flame.dart';

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  runApp(MyApp());

}*/

class GameRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Flame.device.fullScreen();
    Flame.device.setLandscape();
    return MaterialApp(
      home: SplashScreenGame(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}


