import 'package:flutter/material.dart';

class LacteosHuevosScreen extends StatelessWidget {

  static const String routeName = 'lacteoshuevos';
   
  const LacteosHuevosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lacteos y huevos'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Lacteos'),
              Tab(text: 'Huevos'),
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