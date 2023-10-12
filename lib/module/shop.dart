import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopify/module/shirt.dart';

class Shop extends ChangeNotifier {
  final List<Tshirt> _shirtmenu = [
    Tshirt(
        name: "allon",
        price: "Rs.149",
        imagepath: "lib/image/intropage.png",
        rating: "4.9",
        size: "XL",
        description: "a"),
    Tshirt(
        name: "MOONVELLY",
        price: "Rs.279",
        imagepath: "lib/image/intropage.png",
        rating: "4.9",
        size: "XL",
        description: "a"),
    Tshirt(
        name: "Kay Dee ",
        price: "Rs.223",
        imagepath: "lib/image/intropage.png",
        rating: "4.9",
        size: "XL",
        description: "a"),
    Tshirt(
        name: "Axue",
        price: "Rs.149",
        imagepath: "lib/image/intropage.png",
        rating: "4.9",
        size: "XL",
        description: "a"),
  ];

  List<Tshirt> _cart = [];

  List<Tshirt> get shirtmenu => _shirtmenu;

  List<Tshirt> get cart => _cart;

  //add to cart
  void additemtocart(Tshirt thsirt, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(thsirt);
    }
    notifyListeners();
  }

  //remove to cart
  void removeitemtocart(Tshirt thsirt) {
    _cart.remove(thsirt);
    notifyListeners();
  }

  void addtocart(Tshirt tshirt, int quantitycount) {}
}
