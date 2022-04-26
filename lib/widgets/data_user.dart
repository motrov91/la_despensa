import 'package:cliche/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DataUser extends StatelessWidget {
  const DataUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.17,
          margin: EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Laura Melisa Muñoz',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    'Popayán, Cauca',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Container(
                width: 55,
                height: 55,
                child: CircleAvatar(
                    radius: 20.0,
                    child: ClipOval(
                      child: Image.network(
                          'https://via.placeholder.com/300x300/green'),
                    )),
              )
            ],
          ),
        ),

        Positioned(
          
          bottom: 0, 
          left: 0,
          right: 0,
          child: Search()
        )
      ],
    );
  }
}
