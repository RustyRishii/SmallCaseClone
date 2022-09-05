import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:splashscreen/splashscreen.dart';

import 'BottomAppBar.dart';
import 'create.dart' show Create;
import 'discover.dart';
import 'package:newtry/Home.dart';
import 'investments.dart';
import 'watchlist.dart';

void main()
{
  runApp(const MyApp());
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
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
      theme: ThemeData.dark().copyWith(
        primaryColor:const Color(0xFFFFFFFF), scaffoldBackgroundColor: const Color(
          0xFF1DA790)
    ),
      home: const BottomBar(),
    );
  }
}

