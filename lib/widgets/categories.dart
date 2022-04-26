import 'package:flutter/material.dart';

import 'package:cliche/screens/screens.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, LacteosHuevosScreen.routeName),
            child: Container(
              child: Text(
                'Lacteos y huevos',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, GranosPastasScreen.routeName),
            child: Text(
              'Granos y pastas',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, ArrozCafesAromaticasScreen.routeName),
            child: Text(
              'Arroz, cafés y aromáticas',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, AceitesEndulzantesScreen.routeName),
            child: Text(
              'Aceites, sal y endulzantes',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, HarinasEmbutidosScreen.routeName),
            child: Text(
              'Harinas y embutidos',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, AseoPersonalScreen.routeName),
            child: Text(
              'Aseo personal',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, HogarScreen.routeName),
            child: Text(
              'Hogar',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, BebidasLicoresScreen.routeName),
            child: Text(
              'Bebidas y licores',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}