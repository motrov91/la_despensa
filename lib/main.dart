import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:cliche/screens/screens.dart';
void main() {
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: {
        AceitesEndulzantesScreen.routeName : ( _ ) => AceitesEndulzantesScreen(), 
        ArrozCafesAromaticasScreen.routeName : ( _ ) => ArrozCafesAromaticasScreen(), 
        AseoPersonalScreen.routeName : ( _ ) => AseoPersonalScreen(), 
        BebidasLicoresScreen.routeName : ( _ ) => BebidasLicoresScreen(), 
        GranosPastasScreen.routeName : ( _ ) => GranosPastasScreen(), 
        HarinasEmbutidosScreen.routeName : ( _ ) => HarinasEmbutidosScreen(), 
        HogarScreen.routeName : ( _ ) => HogarScreen(), 
        LacteosHuevosScreen.routeName : ( _ ) => LacteosHuevosScreen(), 
        CarritoScreen.routeName : ( _ ) => CarritoScreen(), 
        DetalleProductoScreen.routeName : ( _ ) => DetalleProductoScreen()
      },
    );
  }
}

