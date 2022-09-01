import 'package:flutter/material.dart';
import 'package:yahoofin/yahoofin.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

final yfin = YahooFin();

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Created smallcases",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Managed by you",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          centerTitle: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/create.png"),
            Container(
              color: Color.fromRGBO(33, 34, 36, 1),
              width: 300,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Got a great investment idea?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Create or customize smallcase to save it here and track them",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(64, 153, 255, 1),
                  minimumSize: const Size(200, 50),
                ),
                child: Text(
                    "Create your smallcase",
                style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),)
            )
          ],
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}
