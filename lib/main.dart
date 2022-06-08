import 'package:flutter/material.dart';
import 'package:qizil/pages/home_page.dart';
import 'package:qizil/pages/splash.dart';

void main(){
  runApp(Home());
}
class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: SplashPage(),
      routes: {
        SplashPage.id:(context)=>SplashPage(),
        HomePage.id:(context)=>HomePage(),
      },
    );
  }
}