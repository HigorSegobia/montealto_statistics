import 'package:flutter/material.dart';
import 'package:montealto_covid/pages/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COVID-19 Monte Alto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu'
      ),
      home: IntroPage(),
    );
  }
}

