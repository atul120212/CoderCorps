import 'dart:async';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
        builder: (context) => HomePage(),
        ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Welcome to Coder Corps', style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),),
        )
        ),
    );
  }
}