import 'package:flutter/material.dart';

class Mylisttile extends StatelessWidget {
  const Mylisttile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
