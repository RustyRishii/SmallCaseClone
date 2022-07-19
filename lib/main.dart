import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'create.dart' show Create;
import 'discover.dart';
import 'package:newtry/Home.dart';
import 'investments.dart';
import 'watchlist.dart';

void main ()
{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int CurrentIndex = 0;

  void OnTappedItem(int index)
  {
    setState( () {
      CurrentIndex = index;
    });
  }

  final screens = [
    Home(),
    Discover(),
    Create(),
    WatchList(),
    Investments(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        onTap: OnTappedItem,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        items:  [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.amazon), label: "Home"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.amazon),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.amazon),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.amazon),label: "Home")
        ],
      ),
    );
  }
}

