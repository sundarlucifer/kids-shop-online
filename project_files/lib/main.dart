import 'package:flutter/material.dart';
import 'package:kids_shop/screens/404_error.dart';
import 'package:kids_shop/screens/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kids Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(235, 245, 245, 1.0),
        primaryColor: Color.fromRGBO(235, 100, 100, 1.0),
      ),
      home: LandingScreen(),
    );
  }
}

