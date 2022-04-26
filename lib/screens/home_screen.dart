import 'package:flutter/material.dart';

import 'package:cliche/search/product_search.dart';
import 'package:cliche/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomNavigationBar(),
        floatingActionButton: CustomShoppingCart(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Home());
  }
}

