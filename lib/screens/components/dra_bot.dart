import 'package:ecommc/screens/cart.dart';
import 'package:ecommc/screens/favo.dart';
import 'package:ecommc/screens/homescreen.dart';
import 'package:ecommc/screens/prof.dart';
import 'package:flutter/material.dart';
import 'package:advanced_salomon_bottom_bar/advanced_salomon_bottom_bar.dart';

void main() {
  runApp(const BottmPage());
}

class BottmPage extends StatefulWidget {
  const BottmPage({super.key});

  @override
  _BottmPageState createState() => _BottmPageState();
}

class _BottmPageState extends State<BottmPage> {
  var _currentIndex = 0;

  final List<Widget> _pages = [
    Homescreen(),
    CartPage(),
    FavoPage(),
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
                title: const Text("Wishlist"),
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

class NotiPage extends StatelessWidget {
  const NotiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 222, 222),
        title: const Text('Notifications'),
      ),
    );
  }
}