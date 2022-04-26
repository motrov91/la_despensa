import 'package:flutter/material.dart';

class ProductSearchDelegate extends SearchDelegate {
  String? get searchFieldLabel => 'Buscar....';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Build result');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(child: Text('Busca tus productos'));
    }

    //final productsProvider = Provider.of<ProductsProvider>(context, listen: false);
    //productsProvider.getSuggestionByQuery(query);

    return Text('Search....');
  }
}


class _ProductItem extends StatelessWidget {
  const _ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Hero(
        tag: 'test',
        child: FadeInImage(
          placeholder: const NetworkImage('https://via.placeholder.com/400x300/green'), 
          image: NetworkImage('https://via.placeholder.com/400x300/green'),
          width: 50,
          fit: BoxFit.contain,
        )),
        title: Text('name'),
        subtitle: Text('subname'),
        // onTap: (){
        //   Navigator.pushNamed(context, 'details', arguments: movie);
        // },
    );
  }
}

class _EmptyContainer extends StatelessWidget {
  const _EmptyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Icon(Icons.movie_creation_outlined,
            color: Colors.black45, size: 150),
      ),
    );
  }
}