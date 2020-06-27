import 'package:Animal_planet/homepage.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'plan.dart';
import 'details.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/plan': (context) => Plan(),
      '/details': (context) => Details(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
