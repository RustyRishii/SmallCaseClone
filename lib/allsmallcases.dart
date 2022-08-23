import 'package:flutter/material.dart';

class allsmallcase extends StatefulWidget {
  const allsmallcase({Key? key}) : super(key: key);

  @override
  State<allsmallcase> createState() => _allsmallcaseState();
}

class _allsmallcaseState extends State<allsmallcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "smallcases",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget> [

        ],
      ),
    );
  }
}
