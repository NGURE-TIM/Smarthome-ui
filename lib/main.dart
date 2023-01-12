import 'package:flutter/material.dart';
import 'home.dart';
void main()=>runApp(Smart());

class Smart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homepage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

    );
  }
}

