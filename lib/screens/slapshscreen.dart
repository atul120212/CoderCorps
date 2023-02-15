import 'package:flutter/material.dart';

class MyDraw extends StatelessWidget {
  const MyDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [Image.asset("assets/images/logo.gif")],
        )
      ),
    );
  }
}