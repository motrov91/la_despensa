import 'package:flutter/material.dart';



class CantidadProducto extends StatelessWidget {
  const CantidadProducto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_circle_outline,
              size: 26,
            )),

        SizedBox(width: 3,),

        const Text(
          '1',
          style: TextStyle(fontSize: 18),
        ),

        SizedBox(width: 3,),

        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline,
              size: 26,
            ))
      ],
    );
  }
}