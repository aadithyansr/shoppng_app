// ignore: file_names
import 'package:ecommc/models/product_s.dart';
import 'package:ecommc/models/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductPagge extends StatelessWidget {
  final Product product;

  const ProductPagge({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: _buildUI(
        context,
      ),
      appBar: _appBar(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outline,
          ),
        ),
      ],
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [
        _productImage(context),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.03,
        ),
        _productDetails(
          context,
        )
      ],
    );
  }

  Widget _productImage(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.45,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(product.imageUrl),
        ),
      ),
    );
  }

  Widget _productDetails(
    BuildContext context,
  ) {
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height * 0.02,
          horizontal: MediaQuery.sizeOf(context).width * 0.05,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25,
            ),
            topRight: Radius.circular(
              25,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _productTitleAndReviews(),
            _productPrice(
              context,
            ),
            _productDescription(
              context,
            ),
            _sizeSelector(
              context,
            ),
            const SizedBox(height: 140),
            _buyButton(
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _productTitleAndReviews() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          product.title,
          textScaler: const TextScaler.linear(
            1.4,
          ),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "⭐4.6",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget _productPrice(BuildContext context) {
    return Text(
      "\$${product.price}",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  Widget _productDescription(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
          "The Realme GT6 is a high-performance smartphone that boasts a range of features designed to cater to tech enthusiasts and gamers .Here's a general overview of what you might expect from the GT6 based on trends and typical features in its category"),
    );
  }

  Widget _sizeSelector(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 5,
          ),
        ),
      ],
    );
  }

  Widget _buyButton(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
          child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: MaterialButton(
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.delivery_dining,
                color: Colors.white,
              ),
              Text(
                "  Buy Now",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      )),
      const SizedBox(width: 5),
      Expanded(
          child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: MaterialButton(
          onPressed: () {
            Provider.of<CartProvider>(context, listen: false)
                .addToCart(product);
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${product.title} added to cart')));
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              Text(
                "  Add to  Cart",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ))
    ]);
  }
}
