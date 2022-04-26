import 'package:flutter/material.dart';

class ArrozCafesAromaticasScreen extends StatelessWidget {

  static const String routeName = 'arrozcafesaromaticas';
   
  const ArrozCafesAromaticasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Arroz, Café y Aromáticas'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Arroz'),
              Tab(text: 'Café'),
              Tab(text: 'Aromáticas'),
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.ac_unit),
          ],
        )
      ),
    );
  }
}