import 'package:flutter/material.dart';

 
 
 class CustomNavigationBar extends StatefulWidget {
   const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}



class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int _currentIndex = 0;

  void _onItemTouched(int index) {
    setState(() {
      _currentIndex = index;
      print('$index');
    });
  }

   @override
   Widget build(BuildContext context) {

     
     return BottomNavigationBar(
      currentIndex: _currentIndex,
      elevation: 0,
      onTap: _onItemTouched,
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), 
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: 'Usuario'
        ),
      ]);
   }
}