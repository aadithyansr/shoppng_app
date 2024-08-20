import 'package:flutter/material.dart';

class samM extends StatefulWidget {
  const samM({super.key});

  @override
  State<samM> createState() => _samMState();
}

class _samMState extends State<samM> {
  late final PageController pageController;
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
    return Column(
      children: [
        SizedBox(
            height: 200,
            child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  pageNo = index;
                  setState(() {});
                },
                itemCount: 5,
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                    animation: pageController,
                    builder: (context, child) {
                      return child!;
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                    ),
                  );
                })),
        SizedBox(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                4,
                (index) => Container(
                    margin: EdgeInsets.all(2),
                    child: Icon(Icons.circle,
                        size: 12.0,
                        color: pageNo == index ? Colors.black : Colors.grey))))
      ],
    );
  }
}
