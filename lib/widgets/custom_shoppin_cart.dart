import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:cliche/screens/screens.dart';


class CustomShoppingCart extends StatelessWidget {
  const CustomShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pushNamed(context, CarritoScreen.routeName),
      child: Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
    );
  }
}