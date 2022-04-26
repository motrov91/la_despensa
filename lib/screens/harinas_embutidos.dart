import 'package:flutter/material.dart';

class HarinasEmbutidosScreen extends StatelessWidget {

  static const String routeName = 'arinasembutidos';
   
  const HarinasEmbutidosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Harinas y Embutidos'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Harinas'),
              Tab(text: 'Embutidos'),
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