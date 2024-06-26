import 'package:flutter/material.dart';
import 'package:nike/pages/home.dart'; 
import 'package:nike/pages/intro.dart';
import 'package:nike/pages/shopPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Store',
      debugShowCheckedModeBanner: false,
      home: Intro(),

      routes: {
        '/home': (_) => Home(),
        '/shop': (_) => ShopPage(),
      },
    );
  }
}
