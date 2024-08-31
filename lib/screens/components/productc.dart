import 'package:ecommc/models/product_s.dart';
import 'package:ecommc/models/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final EdgeInsets margin;
  final Function onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
    this.margin = const EdgeInsets.only(),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromRGBO(26, 72, 98, 100)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  product.imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(product.title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 245, 241, 241))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('₹ ${product.price.toString()}',
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 244, 238, 238))),
              ),
              const SizedBox(
                height: 1.0,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Provider.of<FavProvider>(context, listen: false)
                          .addToCart(product);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('${product.title} added to Wishlist')));
                    },
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('${product.title} added to cart')));
                    },
                    icon: const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Color.fromARGB(255, 218, 216, 216),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
