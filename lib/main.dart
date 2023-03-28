import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coder Corps',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/logocc.gif',),
          nextScreen: HomePage(),
          splashTransition: SplashTransition.decoratedBoxTransition,
          backgroundColor: Colors.blueGrey,
          duration: 3000,
          ),
      //Splashscreen(),
    );
  }
}
