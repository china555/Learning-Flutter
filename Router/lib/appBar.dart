import 'package:flutter/material.dart';
import 'shopping_cart.dart';

class MyAppBar extends AppBar {
  MyAppBar(BuildContext context)
      : super(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCart()),
                );
              },
            ),
          ],
        );
}
