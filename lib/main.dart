import 'package:flutter/material.dart';
import 'package:flutter_assignment/login_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new LoginScreen(),
    );
  }
}


