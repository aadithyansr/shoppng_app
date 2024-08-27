import 'package:ecommc/models/proD.dart';
import 'package:ecommc/models/provider.dart';
import 'package:ecommc/sam/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homsa extends StatefulWidget {
  homsa({super.key});

  @override
  State<homsa> createState() => _homsaState();
}

class _homsaState extends State<homsa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
                icon: const Icon(Icons.shopify))
          ],
        ),
        body: GridView.builder(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                childAspectRatio: 0.75,
                mainAxisExtent: 300),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amber,
                ),
                child: Column(
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
                      padding: const EdgeInsets.all(8),
                      child: Text(product.title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 10),
                    Text('\$${product.price.toString()}',
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey)),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline_outlined,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Provider.of<CartProvider>(context, listen: false)
                                .addToCart(product);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text('${product.title}added to cart')));
                          },
                          icon: const Icon(
                            Icons.add_shopping_cart_outlined,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
