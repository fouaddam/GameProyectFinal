import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:proyectofinal/src/Home/CategoryListPage.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:proyectofinal/src/Home/Services_view/ServiceHome1.dart';
import 'package:proyectofinal/src/User_Management/Login.dart';
import 'package:proyectofinal/src/User_Management/Login2.dart';
import 'package:proyectofinal/src/User_Management/Register.dart';
import 'package:proyectofinal/src/User_Management/Splash_VerificationUsers.dart';
import 'package:proyectofinal/src/User_Management/onBoarding.dart';

import 'firebase_options.dart';

import 'Splash.dart';
import 'game/GameRoute.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();



  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());

}



class App extends StatelessWidget {

  const App({super.key});

  String initialRoute(){
    if(FirebaseAuth.instance.currentUser==null){
      return '/Login';
    }else{
      return '/GameRoute';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Splash',

      routes: {'/Splash':(context)=> Splash(duration: 8,Go_to:initialRoute()),
                '/verificationUsers':(context)=>verificationUsers(),
                 '/Login':(context)=>Login(),
                  '/CategoryListPage':(context)=>CategoryListPage(),
                  '/Login2':(context)=>Login2(),
                  '/Register':(context)=>Register(),
                   '/onBoarding':(context)=>onBoarding(),
                   '/ServiceHome1':(context)=>ServiceHome1(),
                      '/GameRoute':(context)=>GameRoute()


      },
    );

  }
}

