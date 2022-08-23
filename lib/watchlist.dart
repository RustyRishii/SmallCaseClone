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
          title:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget> [
              Text("Watchlist"),
              Text("Track your favorites", style: TextStyle(color: Colors.grey, fontSize: 15),)
            ],
          ),
          centerTitle: false,
        ),
        body: Container(
          child: Image.network("https://media.istockphoto.com/vectors/black-man-watching-tv-on-couch-vector-id1359788431?b=1&k=20&m=1359788431&s=612x612&w=0&h=YTqjwOW-gcp1PgHZP33WYF3smduWAHYJkwc1uy7eLoc="),
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}
