import 'package:cliche/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CarritoScreen extends StatelessWidget {
  static const String routeName = 'carrito';

  const CarritoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Carrito'),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.delete)
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 13, left:10 ),
              child: Text(
                'Mi Orden',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]
                ),  
              ),
            ),
            
            CartList(),

            Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 243, 243, 243), width: 3),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: _ContenidoPedido(),
            )
          ],
          
         ));
  }
}

class _ContenidoPedido extends StatelessWidget {
  const _ContenidoPedido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Observaciones del pedido',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text('No hay observaciones')
            )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Total a pagar', 
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  Text(
                    '\$ 60800',
                    style: TextStyle(
                       color: Colors.black,
                       fontSize: 25,
                       fontWeight: FontWeight.bold
                    ),  
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Row(
                      children: const[
                        Icon(Icons.shopping_cart, color: Colors.white,),
                        Text('Ordenar', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
