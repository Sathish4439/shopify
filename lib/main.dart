// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopify/pages/Menupage.dart';
import 'package:shopify/pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intropage(),
      routes: {
        '/intropage': (context) => Intropage(),
        '/menupage': (context) => Menupage(),
      },
    );
  }
}
