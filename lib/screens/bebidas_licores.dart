import 'package:flutter/material.dart';

class BebidasLicoresScreen extends StatelessWidget {

  static const String routeName = 'bebidaslicores';
   
  const BebidasLicoresScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bebidas y Licores'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Bebidas'),
              Tab(text: 'Licores'),
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
          ],
        )
      ),
    );
  }
}