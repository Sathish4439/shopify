



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopify/module/TshirtTile.dart';
import 'package:shopify/module/shop.dart';
import 'package:shopify/pages/Menupage.dart';
import 'package:shopify/pages/intropage.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=>Shop(),
  child: const MyApp(),)
  );
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
        'tshirttilepage':(context) => TshirtTile(),
      },
    );
  }
}
