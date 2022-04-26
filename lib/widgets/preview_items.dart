import 'package:cliche/screens/screens.dart';
import 'package:flutter/material.dart';

class ItemPreview extends StatelessWidget {
  final bool promo;

  const ItemPreview({
    Key? key,
    required this.promo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, DetalleProductoScreen.routeName),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: const EdgeInsets.all(13),
          decoration: decoratorItemPreview(),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage('assets/arrozblanquita.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        promo
                        ? Positioned(
                          top: 10,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(6),
                                    topRight: Radius.circular(6)),
                                color: Colors.red),
                            child: const Text(
                              '-50%',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                          ))
                      : Container(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Café aguila roja'.toUpperCase(), overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 17, ),),
                          const SizedBox( height: 8,),
                          Text('\$ 54000 C/U', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green[500]),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          //   child: Card(
          //     elevation: 2,
          //     child: Stack(
          //       children: [
          //         Container(
          //           height: 180,
          //           child: Image(
          //             image: NetworkImage('https://via.placeholder.com/400x400'),
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         promo
          //             ? Positioned(
          //                 top: 10,
          //                 child: Container(
          //                   padding: const EdgeInsets.all(2),
          //                   decoration: const BoxDecoration(
          //                       borderRadius: BorderRadius.only(
          //                           bottomRight: Radius.circular(6),
          //                           topRight: Radius.circular(6)),
          //                       color: Colors.red),
          //                   child: const Text(
          //                     '-50%',
          //                     style: TextStyle(
          //                         color: Colors.white, fontWeight: FontWeight.w600),
          //                   ),
          //                 ))
          //             : Container(),
          //         _InfoProducto()
          //       ],
          //     ),
          //   )
        ),
      ),
    );
  }

  BoxDecoration decoratorItemPreview() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.green.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 4,
                offset: Offset(3, 3))
          ]);
}

class _InfoProducto extends StatelessWidget {
  const _InfoProducto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 20),
          height: 40,
          width: 160,
          color: const Color.fromRGBO(255, 255, 255, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: const [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                      height: 16,
                      child: Text(
                        '21',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Text(
                  '70.000',
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
        ));
  }
}
