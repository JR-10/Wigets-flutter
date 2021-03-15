import 'package:custom_scroll_view/pages/home.dart';
import 'package:custom_scroll_view/pages/home_dos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
      //home: HomeDos(),
    );
  }
}