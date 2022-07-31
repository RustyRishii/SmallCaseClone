import 'package:flutter/material.dart';

class Investments extends StatefulWidget {
  const Investments({Key? key}) : super(key: key);

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Investment"),
          centerTitle: false,
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}