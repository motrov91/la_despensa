import 'package:flutter/material.dart';

class HogarScreen extends StatelessWidget {

  static const String routeName = 'hogar';
   
  const HogarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('HogarScreen'),
      ),
    );
  }
}