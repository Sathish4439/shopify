// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/color.dart';

class Menupage extends StatelessWidget {
  const Menupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        title: Text(
          "Shopify",
          style: GoogleFonts.dmSerifDisplay(fontSize: 30),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Expanded(child: 
      ListView(
        
      ))
      

    );
  }
}
