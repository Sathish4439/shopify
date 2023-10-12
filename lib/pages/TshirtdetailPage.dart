// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopify/botton.dart';
import 'package:shopify/color.dart';
import 'package:shopify/module/shirt.dart';
import 'package:shopify/module/shop.dart';

class TshirtdetailPage extends StatefulWidget {
  final Tshirt tshirt;
  const TshirtdetailPage({super.key, required this.tshirt});

  @override
  State<TshirtdetailPage> createState() => _TshirtdetailPageState();
}

class _TshirtdetailPageState extends State<TshirtdetailPage> {
  int quantitycount = 0;

  void degrementquantity() {
    setState(() {
      if (quantitycount > 0) quantitycount--;
    });
  }

  void incrementquantity() {
    setState(() {
      quantitycount++;
    });
  }

  void addtocart() {
    if (quantitycount > 0) {
      final shop = context.read<Shop>();

      shop.addtocart(widget.tshirt, quantitycount);

      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Text("Item is added to the cart successfully"),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.done))
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primarycolor,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                //image
                Image.asset(
                  widget.tshirt.imagepath,
                  height: 150,
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.tshirt.name,
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),

                //rating
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Rating : ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[900]),
                          ),
                          //icon
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                          ),

                          //rating
                          Text(
                            widget.tshirt.rating,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "size : ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.tshirt.size,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                //name
                SizedBox(
                  height: 30,
                ),

                //description
                Text(
                  "Product details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "               Introducing our Pure Cotton Full Sleeve Round Neck T-Shirt for Men the perfect blend of comfort and style. This classic regular-fit tee is ideal for various occasions, crafted from high-quality pure cotton, and designed for year-round wear. Elevate your wardrobe with this versatile essential.",
                  style: TextStyle(height: 1.5, fontWeight: FontWeight.w400),
                ),
              ],
            )),
            //price + quantity + addto cart
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: primarycolor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  //price
                  children: [
                    Row(
                      //price
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ' + widget.tshirt.price,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //remove
                            Container(
                                decoration: BoxDecoration(
                                    color: secondary, shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: degrementquantity,
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ))),
                            SizedBox(
                              width: 10,
                            ),

                            //item count
                            Text(
                              quantitycount.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            //add
                            Container(
                                decoration: BoxDecoration(
                                    color: secondary, shape: BoxShape.circle),
                                child: IconButton(
                                    onPressed: incrementquantity,
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                      ],
                    ),
                    Mybottn(
                      text: "Add to cart",
                      onTap: addtocart,
                    )
                  ],

                  //quantity
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
