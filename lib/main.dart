import 'package:flutter/material.dart';
// import 'package:flutter_navigation/pages/about.dart';
import 'package:flutter_navigation/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      // '/about': (context) => About(),
    },
  ));
}
