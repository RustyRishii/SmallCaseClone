import 'package:flutter/material.dart';
import 'package:newtry/watchlist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Home.dart';
import 'create.dart';
import 'discover.dart';
import 'investments.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int CurrentIndex = 0;

  void OnTappedItem(int index) {
    setState(() {
      CurrentIndex = index;
    });
  }

  final screens = [
    const Home(),
    const Discover(),
    const Create(),
    const WatchList(),
    const Investments(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[CurrentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
                top: BorderSide(
                    color: Color.fromRGBO(33, 34, 36, 9), width: 1.5))),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(33, 34, 36, 5),
          type: BottomNavigationBarType.fixed,
          currentIndex: CurrentIndex,
          iconSize: 24,
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          selectedLabelStyle: const TextStyle(fontSize: 12),
          onTap: OnTappedItem,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const  [
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house), label: "Home"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.compass), label: "Discover"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.box), label: "Create"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bookmark), label: "Watchlist"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.businessTime), label: "Investments"),
          ],
        ),
      ),
    );
  }
}
