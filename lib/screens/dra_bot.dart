import 'package:ecommc/screens/components/body.dart';
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
    Column(children: [Padding(padding: EdgeInsets.all(1), child: body())]),
    Center(child: Text("1")),
    Center(child: Text("2")),
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
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(),
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 55,
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Lionel Messi',
                        style: TextStyle(fontSize: 26),
                      )
                    ],
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.wallet),
                title: Text('Wallet'),
              ),
              ListTile(
                leading: Icon(Icons.local_activity),
                title: Text('Activity'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
