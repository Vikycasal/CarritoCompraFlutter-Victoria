import "package:flutter/material.dart";
import 'package:flutterapp/pages/HomePage.dart';
import 'package:flutterapp/pages/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //aca pongo las rutas que despues voy a redireccionar
      routes: {
        "/": (context) => SplashScreen(),
        "homePage": (context) => HomePage(),
      },
    );
  }
}
