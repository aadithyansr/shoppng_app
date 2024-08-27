import 'package:flutter/material.dart';

class Prof extends StatefulWidget {
  const Prof({super.key});

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Account',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 253, 253),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.red,
                  size: 35,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.blueAccent,
                  size: 35,
                )),
          ],
        ),
        body: bodyP(context));
  }

  bodyP(BuildContext context) {
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
            _profileBar(
              context,
            ),
            divideR(context),
            _listview(context),
          ],
        ),
      ),
    ));
  }

  _profileBar(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(2),
        height: 100,
        child: const Row(
          children: [
            SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage('assets/img/fit.webp'),
              radius: 45,
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12,
                  child: Icon(
                    Icons.camera_alt,
                    size: 15,
                  ),
                ),
              ),
            ),
            SizedBox(width: 15),
            Text(
              'Leo Messi',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.8),
            borderRadius: BorderRadius.circular(16)),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                'Edit Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ),
      Row(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(bottom: 10, left: 15, right: 3),
            height: 110,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(16)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wb_twilight_sharp,
                  color: Colors.white,
                ),
                Text(
                  'Change Language',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(bottom: 10, left: 5, right: 15),
            height: 110,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(16)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_in_talk_sharp,
                  color: Colors.white,
                ),
                Text(
                  'Help Center',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )),
        ],
      ),
      //
    ]);
  }

  _listview(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 1, bottom: 15, left: 15),
              child: Text('Payments',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
          Padding(
              padding: const EdgeInsets.only(top: 1, bottom: 10, left: 15),
              child: Column(children: [
                const Row(
                  children: [
                    Icon(
                      Icons.phone_android,
                      size: 25,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: 10),
                    Text('Bank & UPI Details',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18)),
                  ],
                ),
                divideR(context),
                const Row(
                  children: [
                    Icon(
                      Icons.credit_card_sharp,
                      size: 25,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text('Payment & Refund',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18)),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 25),
                    child: Text('My Activity',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold))),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 1,
                      bottom: 10,
                    ),
                    child: Column(children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.production_quantity_limits,
                            size: 25,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(width: 10),
                          Text('My Products',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 18)),
                        ],
                      ),
                      divideR(context),
                      const Row(
                        children: [
                          Icon(
                            Icons.people,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(width: 10),
                          Text('Community',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 18)),
                        ],
                      ),
                      divideR(context),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 1,
                            bottom: 10,
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Settings',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18)),
                                ],
                              ),
                              divideR(context),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 25,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Rate this App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18)),
                                ],
                              ),
                              divideR(context),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 1,
                                  bottom: 10,
                                ),
                                child: Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.question_mark_rounded,
                                          size: 25,
                                          color: Colors.black,
                                        ),
                                        SizedBox(width: 10),
                                        Text('Terms & Conditions',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18)),
                                      ],
                                    ),
                                    divideR(context),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.logout,
                                          size: 25,
                                          color: Colors.redAccent,
                                        ),
                                        SizedBox(width: 10),
                                        Text('Log Out',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18)),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ]))
              ]))
        ]);
  }

  divideR(BuildContext context) {
    return const Divider(
      height: 50,
      thickness: 0.9,
      indent: 10,
      endIndent: 10,
      color: Colors.black,
    );
  }
}