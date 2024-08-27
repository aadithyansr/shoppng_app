import 'package:ecommc/models/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartItems = cartProvider.cartItems;

    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.title),
            subtitle: Text('\$${product.price.toString()}'),
            trailing: IconButton(
              icon: Icon(Icons.remove_shopping_cart),
              onPressed: () {
                cartProvider.removeFromCart(product);
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
