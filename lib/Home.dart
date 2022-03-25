import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      'Hi, Rishikesh!',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 15, 0, 20),
                child: const Text(
                  "Starbucks has operations in more countries than Goldman sachs and JP Morgan",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 100),
                  color: Colors.blueGrey[900],
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Investment Overview",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
