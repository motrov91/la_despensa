import 'package:flutter/material.dart';

import 'package:cliche/search/product_search.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showSearch(context: context, delegate: ProductSearchDelegate()),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40)
          ),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1,3)
                )
              ]
            ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search, color: Colors.green[300]),
                    Text(
                      'Busca tus productos',
                      style: TextStyle(color: Colors.green[300]),
                    ),
                    Icon(Icons.search, color: Colors.green[300])
                  ],
                ),
              )),
        ),
      ),
    );
  }
}