import 'package:flutter/material.dart';

import 'package:badges/badges.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.grey[700],
      elevation: 0,
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 30, top: 10),
          child: Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.grey[700],
            ),
          )
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}