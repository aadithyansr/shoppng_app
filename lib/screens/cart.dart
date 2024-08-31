import 'package:ecommc/models/product_s.dart';
import 'package:ecommc/models/provider.dart';
import 'package:ecommc/screens/components/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String selectpaymntmethod = 'Google Pay';
  final paymentOptions = [
    payment(option: 'Google Pay'),
    payment(option: 'Credit Card'),
    payment(option: 'Cash on Delivery')
  ];

  var options;

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartItems = cartProvider.cartItems;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(76, 119, 102, 1),
      appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    builder: (context) {
                      return SizedBox(
                        width: 350,
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                    height: 200,
                                    child: const Column(children: [
                                      Center(
                                        child: Text(
                                          '',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Select a Payment Method',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      )
                                    ]))),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                    height: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: Colors.deepOrangeAccent
                                                  .withOpacity(0.6)),
                                          child: Center(
                                              child: Text(
                                            'Total Amount : ₹ ${cartProvider.totalAmount.toStringAsFixed(2)} ',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )),
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: const Color.fromARGB(
                                                      255, 22, 114, 213)
                                                  .withOpacity(0.6)),
                                          child: const Center(
                                              child: Text(
                                            'Proceed',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )),
                                        ),
                                      ],
                                    )))
                          ],
                        ),
                      );
                    });
              },
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Colors.white,
              ),
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(left: 15),
            ),
            Positioned(
                child: Consumer<CartProvider>(
                    builder: (context, value, child) =>
                        CartCounter(count: cartItems.length.toString()))),
            const Icon(
              Icons.abc,
              color: Color.fromRGBO(76, 119, 102, 1),
            )
          ],
          backgroundColor: const Color.fromRGBO(76, 119, 102, 1),
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                  horizontalTitleGap: 20,
                  leading: Image.network(product.imageUrl),
                  title: Text(product.title),
                  subtitle: Text('₹ ${product.price.toString()}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      cartProvider.removeFromCart(product);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('${product.title} removed from cart')));
                    },
                  )));
        },
      ),
    );
  }
}
