import 'package:flutter/material.dart';

import 'package:cliche/widgets/widgets.dart';
import 'package:badges/badges.dart';

class DetalleProductoScreen extends StatelessWidget {
  static const String routeName = 'descripcion';

  const DetalleProductoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: SafeArea(
          bottom: false,
          child: Container(
            color: Colors.grey[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _imageInfo(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Arroz blanquita',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]),
                      ),
                      Text(
                        '500gr',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '\$ 7000 c/u',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _precio_cantidad(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Descripción",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text(
                          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _precio_cantidad extends StatelessWidget {
  const _precio_cantidad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Color.fromRGBO(155, 155, 155, 0.1))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: CantidadProducto(),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(30)),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Agregar',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _imageInfo extends StatelessWidget {
  const _imageInfo({
    Key? key,
  }) : super(key: key);

  final Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          margin: const EdgeInsets.only(bottom: 32),
          child: Image(
            image: AssetImage('assets/arrozblanquita.jpeg'),
          ),
        ),
        Positioned(
          bottom: 12,
          right: 40,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green[400]),
            child: IconButton(
                onPressed: () {
                  print('tap');
                },
                color: Colors.grey,
                highlightColor: color,
                splashColor: color,
                hoverColor: color,
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
          ),
        ),
        Positioned(
            top: 30,
            left: 15,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey[700],
              ),
            )),
        Positioned(
            right: 40,
            top: 40,
            child: Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.grey[700],
              ),
            )),
      ],
    );
  }
}
