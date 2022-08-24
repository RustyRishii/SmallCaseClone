import 'package:flutter/material.dart';
import 'package:newtry/Home.dart';

class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text("Watchlist"),
              Text(
                "Track your favorites",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          ),
          centerTitle: false,
        ),
        body: Container(
            height: 250,
            width: 450,
            color: Color.fromRGBO(33, 34, 36, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    "assets/images/tv.png",
                    height: 100,
                    width: 200,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Start tracking smallcases",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            )),
        backgroundColor: const Color.fromRGBO(29, 30, 32, 1));
  }
}
