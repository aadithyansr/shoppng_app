import 'package:ecommc/models/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavProvider>(context);
    final _favItems = favProvider.favItems;

    return Scaffold(
      appBar: AppBar(title: const Text('Wishlish')),
      body: ListView.builder(
        itemCount: _favItems.length,
        itemBuilder: (context, index) {
          final product = _favItems[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.title),
            subtitle: Text('\$${product.price.toString()}'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_shopping_cart),
              onPressed: () {
                favProvider.removeFromCart(product);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${product.title} removed from cart')));
              },
            ),
          );
        },
      ),
    );
  }
}
