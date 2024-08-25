import 'package:ecommc/models/proD.dart';

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
            SizedBox(height: 10),
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
            margin: EdgeInsets.all(2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 10),
                          child: CupertinoSearchTextField(
                            controller: textEditingController,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                          ))),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_outlined, size: 30))
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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 300),
      itemCount: HomPMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: const Color.fromARGB(255, 245, 229, 129),
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
                  "${HomPMap.elementAt(index)['images']}",
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${HomPMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.titleMedium!.merge(
                            const TextStyle(fontWeight: FontWeight.bold),
                          ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "${HomPMap.elementAt(index)['price']}",
                      style: Theme.of(context).textTheme.titleSmall!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 15.0,
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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_shopping_cart_outlined,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
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
                      padding: EdgeInsets.only(top: 18),
                      child: Container(
                        width: 85,
                        margin: EdgeInsets.only(left: 1, right: 1),
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
