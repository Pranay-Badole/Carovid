import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';

void main() {
  runApp(carovid());
}

class carovid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),debugShowCheckedModeBanner: false,);
  }
}