import 'package:ecommc/models/proD.dart';
import 'package:ecommc/models/provider.dart';
import 'package:ecommc/screens/components/dra_bot.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final TextEditingController textEditingController = TextEditingController();
  late PageController pageController = PageController();

  final ScrollController scrollController = ScrollController();
  int pageNo = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: 0.75);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyUI(context),
    );
  }

  bodyUI(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: scrollController,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02,
          vertical: MediaQuery.sizeOf(context).height * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topBar(
              context,
            ),
            _carous(context),
            const SizedBox(height: 10),
            _rowW(context),
            gridB(context),
          ],
        ),
      ),
    ));
  }

////////////////////////////////////////////////////////////////////////////////

  _topBar(BuildContext context) {
    return SafeArea(
        child: Container(
            color: const Color.fromARGB(255, 212, 202, 179).withOpacity(0.2),
            margin: const EdgeInsets.all(2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 10),
                          child: CupertinoSearchTextField(
                            controller: textEditingController,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                          ))),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NotiPage()));
                      },
                      icon: const Icon(Icons.notifications_none_outlined,
                          size: 30))
                ])));
  }

  _carous(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 150,
          child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                pageNo = index;
                setState(() {});
              },
              itemCount: 6,
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (context, child) {
                    return child!;
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                );
              })),
      const SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              6,
              (index) => Container(
                  margin: const EdgeInsets.all(2),
                  child: Icon(Icons.circle,
                      size: 12.0,
                      color: pageNo == index ? Colors.black : Colors.grey)))),
    ]);
  }

  gridB(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
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
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.amber,
            ),
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
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('\$${product.price.toString()}',
                      style: const TextStyle(fontSize: 16, color: Colors.grey)),
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
                            content:
                                Text('${product.title} added to Wishlist')));
                      },
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  _rowW(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 212, 202, 179).withOpacity(0.3),
        height: 150,
        child: Column(children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catMap.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                        width: 85,
                        margin: const EdgeInsets.only(left: 1, right: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "${catMap.elementAt(index)['images']}",
                                height: 70,
                                width: 75,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "${catMap.elementAt(index)['title']}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ));
                }),
          ),
        ]));
  }
}
