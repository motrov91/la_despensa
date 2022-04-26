import 'package:cliche/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (BuildContext context, index) {
            return Container(
              margin: EdgeInsets.all(6),
              decoration: decoratorStyle(),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image(
                        image: AssetImage('assets/arrozeditada.png')
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Arroz blanquita', 
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '\$ 7000 c/u',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontStyle: FontStyle.italic
                          ),  
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Subtotal \$ 12000',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          CantidadProducto()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ));
  }

  BoxDecoration decoratorStyle() => BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(10)
  );
}
