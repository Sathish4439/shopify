// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopify/color.dart';
import 'package:shopify/module/ShirtTile.dart';

import 'package:shopify/module/shop.dart';
import 'package:shopify/pages/TshirtdetailPage.dart';

class Menupage extends StatefulWidget {
  Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  void navigateToFooddetails(int index) {
    final shop = context.read<Shop>();
    final shirtmenu = shop.shirtmenu;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TshirtdetailPage(tshirt: shirtmenu[index]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final shirtmenu = shop.shirtmenu;

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
      drawer: Drawer(
          backgroundColor: primarycolor,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 200,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/menupage');
                      },
                      child: Column(
                        children: [
                          //home
                          Row(
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Home",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                         

                          //about
                          Row(
                            children: [
                              Icon(
                                Icons.info,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "About",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.logout,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Log out",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ))

                          //logout
                        ],
                      ),
                    ),
                  ))
            ],
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text("Newly Arrived",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shirtmenu.length,
                  itemBuilder: (context, index) => ShirtTile(
                      tshirt: shirtmenu[index],
                      onTap: () => navigateToFooddetails(index)))),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
            child: Row(
              children: [
                Image.asset(
                  "lib/image/intropage.png",
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rs.259",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("4.5"),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Icon(Icons.favorite_rounded),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
