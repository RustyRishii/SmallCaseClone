import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newtry/Home.dart';
import 'package:newtry/create.dart';
import 'package:newtry/discover.dart';
import 'package:newtry/create.dart';
import 'package:newtry/investments.dart';
import 'package:newtry/watchlist.dart';

void main ()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int CurrentIndex=0;

  void Ontapped(int index)
  {
    setState(() {
      CurrentIndex= index;});
  }

  final List<Widget>Screen=
  [
    Home(),
    discover(),
    create(),
    investments(),
    watchlist(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[CurrentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        currentIndex: CurrentIndex,
        onTap: Ontapped,
        items: const  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.discord), label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.watch), label: "Watchlist"),
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: "Investments"),
        ],
      )
    );
  }
}