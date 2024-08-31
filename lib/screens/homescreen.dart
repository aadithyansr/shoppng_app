import 'package:ecommc/models/proD.dart';

import 'package:ecommc/screens/components/dra_bot.dart';
import 'package:ecommc/screens/components/productC.dart';
import 'package:ecommc/screens/prouct_Page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: const Color.fromRGBO(76, 119, 102, 1),
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
            color: const Color.fromRGBO(26, 72, 98, 0),
            margin: const EdgeInsets.all(2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 10),
                          child: CupertinoSearchTextField(
                            backgroundColor:
                                const Color.fromRGBO(26, 72, 98, 10),
                            controller: textEditingController,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 241, 234, 234),
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
                      icon: const Icon(Icons.notifications,
                          color: Colors.white, size: 30))
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
              itemCount: carous.length,
              itemBuilder: (_, index) {
                final carou = carous[index];
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (context, child) {
                    return child!;
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(carou.image),
                            fit: BoxFit.cover)),
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
                      color: pageNo == index
                          ? const Color.fromRGBO(26, 72, 98, 10)
                          : Colors.grey)))),
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
        });
  }

  _rowW(BuildContext context) {
    return SizedBox(
        height: 175,
        child: Column(children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categors.length,
                itemBuilder: (context, index) {
                  final categ = categors[index];
                  return Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        width: 100,
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 10,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(categ.image),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 32, 28, 27)
                                        .withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8)),
                                height: 30,
                                width: 102,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      categ.title,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ));
                }),
          ),
        ]));
  }
}
