import 'package:ecommc/screens/homeS.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

void main() => runApp(samP());

class samP extends StatefulWidget {
  @override
  _samPState createState() => _samPState();
}

class _samPState extends State<samP> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    Center(child: homeS()),
    Center(child: Text('1235')),
    Center(child: Text("222222")),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: tabItems[_selectedIndex],
        ),
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,
          iconSize: 30,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: Icon(Icons.event),
              title: Text('Events'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.highlight),
              title: Text('Highlights'),
            ),
          ],
        ),
      ),
    );
  }
}
