import 'package:flutter/material.dart';

class GranosPastasScreen extends StatelessWidget {

  static const String routeName = 'granospastas';
   
  const GranosPastasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Granos y Pastas'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'granos'),
              Tab(text: 'Pastas'),
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