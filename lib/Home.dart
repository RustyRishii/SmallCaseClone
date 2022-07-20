import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String quote = "";

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 250,
      backgroundColor: Colors.yellow,
      color: Colors.red,
      strokeWidth: 3,
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      onRefresh: () async {},
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
          actions: <Widget>[
            ElevatedButton(
              onPressed: () async {
                var url = Uri.parse(
                    'https://goquotes-api.herokuapp.com/api/v1/random?count=1');
                var response = await http.get(url);
                print('Response status: ${response.statusCode}');
                print('Response body: ${response.body}');

                var data = jsonDecode(response.body);
                quote = data["quotes"][0]["text"];

                await Future.delayed(const Duration(microseconds: 1500));

                setState(() {});
              },
              child: const Text("Refresh"),
            )
          ],
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                children: const <Widget>[
                  SizedBox(height: 35),
                  Text(
                    "Hola, Rishikesh!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                children: <Widget>[
                  Image.network(
                      "https://cdn2.iconfinder.com/data/icons/color-svg-vector-icons-part-2/512/quote_talk_bubble_comment-512.png",
                      scale: 19),
                  //TestText(),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "A game is won when you focus on the playing"
                      " field and not of the scoreboard",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(
                //border: Border.all(width: 5, color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color.fromRGBO(42, 43, 45, 1),
              ),
              margin: const EdgeInsets.all(15),
              width: 500,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget> [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                    child: Text(
                      "Investment Overview",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1),
      ),
    );
  }
}

Widget TestText() {
  return ListView(
    padding: const EdgeInsets.all(8),
    children: <Widget>[
      Container(
        child: Text(quote),
      ),
    ],
  );
}
