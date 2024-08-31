import 'package:ecommc/models/proD.dart';
import 'package:ecommc/models/provider.dart';
import 'package:ecommc/screens/components/productC.dart';
import 'package:ecommc/screens/prouct_Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavProvider>(context);
    final _favItems = favProvider.favItems;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(76, 119, 102, 1),
      appBar: AppBar(
        title: const Text(
          'Wishlish',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(76, 119, 102, 1),
      ),
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

class expolreP extends StatelessWidget {
  const expolreP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(76, 119, 102, 1),
        appBar: AppBar(
          title: const Text(
            'Expolre..',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromRGBO(76, 119, 102, 1),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 253, 251, 251),
                  size: 30,
                ))
          ],
        ),
        body: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                childAspectRatio: 0.75,
                mainAxisSpacing: 10,
                mainAxisExtent: 300),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(
                product: product,
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.02,
                  vertical: MediaQuery.sizeOf(context).height * 0.02,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProductPagge(product: product);
                      },
                    ),
                  );
                },
              );
            }));
  }
}
