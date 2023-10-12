import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/botton.dart';
import 'package:shopify/module/shirt.dart';

class ShirtTile extends StatelessWidget {
  final void Function()? onTap;
  final Tshirt tshirt;
  ShirtTile({super.key, required this.tshirt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          //image
          Image.asset(
            tshirt.imagepath,
            height: 140,
          ),
          SizedBox(
            height: 10,
          ),
          //text
          Text(
            tshirt.name,
            style:
                GoogleFonts.dmSerifDisplay(color: Colors.black, fontSize: 25),
          ),

          //price + rating
          SizedBox(
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(tshirt.price),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(tshirt.rating),
                  ],
                )
              ],
            ),
          ),
          Mybottn(text: "Buy Now", onTap: onTap)
        ],
      ),
    );
  }
}
