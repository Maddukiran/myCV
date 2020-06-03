import 'package:flutter/material.dart';
import 'package:kiran/screens/homescreen.dart';
// import 'package:firebase/firebase.dart' as Firebase;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Tenali'),
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => new MyApp(),
      },
    );
  }
}
