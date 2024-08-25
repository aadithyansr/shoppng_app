import 'package:ecommc/screens/homescreen.dart';
import 'package:ecommc/screens/prof.dart';
import 'package:flutter/material.dart';
import 'package:advanced_salomon_bottom_bar/advanced_salomon_bottom_bar.dart';

void main() {
  runApp(sam());
}

class sam extends StatefulWidget {
  @override
  _samState createState() => _samState();
}

class _samState extends State<sam> {
  var _currentIndex = 0;

  final List<Widget> _pages = [
    Homescreen(),
    const notify(),
    const notify(),
    const Prof()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: _pages[
            _currentIndex], // Display the content based on the selected index
        bottomNavigationBar: AdvancedSalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            /// Home
            AdvancedSalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
            ),

            /// Likes
            AdvancedSalomonBottomBarItem(
              icon: const Icon(Icons.shopping_cart_checkout),
              title: const Text("My Cart"),
            ),

            /// Search
            AdvancedSalomonBottomBarItem(
                icon: const Icon(Icons.favorite_border_outlined),
                title: const Text("My Wishlist"),
                activeIcon: const Icon(Icons.favorite)),

            /// Profile
            AdvancedSalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text("Profile"),
                activeIcon: const Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}

class notify extends StatelessWidget {
  const notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
    );
  }
}
