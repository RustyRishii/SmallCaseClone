import 'package:flutter/material.dart';
import 'constants.dart';
import 'freesmallcases.dart';
import 'package:newtry/PaidSmallCases.dart';

class allsmallcase extends StatefulWidget {
  const allsmallcase({Key? key}) : super(key: key);

  @override
  State<allsmallcase> createState() => _allsmallcaseState();
}

class _allsmallcaseState extends State<allsmallcase> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "smallcases",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: const TabBar(
            tabs:  <Widget>  [
              Tab(text: "Free"),
              Tab(text: "Paid"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            free(),
            Paid(),
        ],
        ),
          backgroundColor: const Color.fromRGBO(33, 34, 36, 1)
      ),
    );
  }
}