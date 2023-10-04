// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mybottn extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const Mybottn({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text,
                style: GoogleFonts.dmSerifDisplay(
                    color: Colors.grey[900], fontSize: 23)),
            Icon(
              Icons.arrow_forward,
              size: 25,
            )
          ],
        ),
      ),
    );
  }
}
