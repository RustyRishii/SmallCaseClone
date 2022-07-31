import 'package:flutter/material.dart';
class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create"),
          centerTitle: false,
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}
