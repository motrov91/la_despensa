import 'package:flutter/material.dart';

class AceitesEndulzantesScreen extends StatelessWidget {

  static const String routeName = 'aceitesendulzantes';
   
  const AceitesEndulzantesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Aceites, Sal y Endulzantes'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Aceites'),
              Tab(text: 'Sal'),
              Tab(text: 'Endulzantes'),
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