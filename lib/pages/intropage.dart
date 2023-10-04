// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/botton.dart';
import 'package:shopify/color.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primarycolor,
        body: ListView(children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //shop name

                  Text("SHOPIFY",
                      style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white, fontSize: 30)),
                  SizedBox(
                    height: 20,
                  ),

                  //image
                  Image.asset("lib/image/intropage.png", height: 300),
                  SizedBox(
                    height: 30,
                  ),

                  //title
                  Text("Between Love and Madness Lies Obsession",
                      style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white, fontSize: 30)),
                  SizedBox(
                    height: 10,
                  ),

                  //subtitle
                  Text("Embrace the journey, not just the destination.",
                      style: GoogleFonts.dmSerifDisplay(
                          color: Colors.grey[900], fontSize: 18)),
                  SizedBox(height: 20),

                  //botton

                  Mybottn(
                    text: "Get Now",
                    onTap: () {
                      Navigator.pushNamed(context, '/menupage');
                    },
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
