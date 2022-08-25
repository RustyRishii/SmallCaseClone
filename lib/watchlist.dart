import 'package:flutter/material.dart';
import 'package:newtry/Home.dart';
import 'allsmallcases.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(33, 34, 36, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              height: 250,
              width: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/tv.png",
                          height: 100,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Start tracking smallcases",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  const Expanded(
                    child: Text(
                      "Watchlist some smallcases you want to keep an eye on",
                      maxLines: 2,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(64, 153, 255, 1),
                            minimumSize: const Size(350, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: const Text(
                          "Find your smallcase",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(33, 34, 36, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              width: 400,
              height: 320,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      SizedBox(width: 10),
                      Text(
                        "Add smallcases to your watchlist",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(width: 10),
                      Text(
                        "based on your recent activities",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            //border: Border.all(width: 5, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Color.fromRGBO(39, 40, 42, 1),
                          ),
                          margin: const EdgeInsets.all(10),
                          //color: Colors.blue,
                          width: 310,
                          height: 230,
                          child: Column(
                            children: <Widget>[
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  const SizedBox(width: 20),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(3.1),
                                    child: Image.network(
                                        "https://assets.smallcase.com/images/smallcases/200/SCNM_0012.png",
                                        height: 50,
                                        width: 50),
                                  ),
                                  const SizedBox(width: 130),
                                  Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        color: Color.fromRGBO(153, 128, 64, 1)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Med. Volatility"),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  SizedBox(width: 20, height: 40),
                                  Expanded(
                                    child: Text(
                                      "Rising Rural Demand",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const <Widget>[
                                  SizedBox(width: 20, height: 1),
                                  Expanded(
                                    child: Text(
                                      "Companies that stand to benefit from increasing rural consumption",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  //const SizedBox(width: 1),
                                  Column(
                                    children: const <Widget>[
                                      Text(
                                        "6Y CAGR",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "15.35%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: const <Widget>[
                                      Text(
                                        "Min. Amount",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "₹ 56,601",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )
                                    ],
                                  ),
                                  const Icon(Icons.bookmark_border,
                                      color: Colors.grey),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            //border: Border.all(width: 5, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Color.fromRGBO(39, 40, 42, 1),
                          ),
                          margin: const EdgeInsets.all(10),
                          //color: Colors.blue,
                          width: 310,
                          height: 230,
                          child: Column(
                            children: <Widget>[
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  const SizedBox(width: 20),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(3.1),
                                    child: Image.network(
                                        "https://assets.smallcase.com/images/smallcases/160/SCET_0005.png",
                                        height: 50,
                                        width: 50),
                                  ),
                                  const SizedBox(width: 130),
                                  Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        color: Color.fromRGBO(39, 188, 148, 1)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Low Volatility"),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  SizedBox(width: 20, height: 40),
                                  Expanded(
                                    child: Text(
                                      "Equity & Gold",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const <Widget>[
                                  SizedBox(width: 20, height: 1),
                                  Expanded(
                                    child: Text(
                                      "Create wealth with equities, stay protected with Gold. The sweet spot",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  //const SizedBox(width: 1),
                                  Column(
                                    children: const <Widget>[
                                      Text(
                                        "4Y CAGR",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "16.14%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: const <Widget>[
                                      Text(
                                        "Min. Amount",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "₹282",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )
                                    ],
                                  ),
                                  const Icon(Icons.bookmark_border,
                                      color: Colors.grey),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            //border: Border.all(width: 5, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Color.fromRGBO(39, 40, 42, 1),
                          ),
                          margin: const EdgeInsets.all(15),
                          //color: Colors.blue,
                          width: 310,
                          height: 230,
                          child: Column(
                            children: <Widget>[
                              const SizedBox(height: 15),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  const SizedBox(width: 20),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(3.1),
                                    child: Image.network(
                                        "https://assets.smallcase.com/images/smallcases/200/SCNM_0024.png",
                                        height: 50,
                                        width: 50),
                                  ),
                                  const SizedBox(width: 130),
                                  Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5)),
                                        color: Color.fromRGBO(124, 69, 64, 1)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("High Volatility"),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  SizedBox(width: 20, height: 40),
                                  Expanded(
                                    child: Text(
                                      "Affordable Housing",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const <Widget>[
                                  SizedBox(width: 20, height: 1),
                                  Expanded(
                                    child: Text(
                                      "Companies participating in and benefitting from affordable housing projects",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  // const SizedBox(width: 20),
                                  Column(
                                    children: const <Widget>[
                                      Text(
                                        "5Y CAGR",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "10.68%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: const <Widget>[
                                      Text(
                                        "Min. Amount",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "₹ 32,710",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )
                                    ],
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          const Icon(Icons.bookmark,
                                              color: Colors.grey);
                                        });
                                      },
                                      child: const Icon(Icons.bookmark_border,
                                          color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(width: 5, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Color.fromRGBO(39, 40, 42, 1),
                          ),
                          margin: const EdgeInsets.all(15),
                          //color: Colors.blue,
                          width: 310,
                          height: 230,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  <Widget>[
                              Text(
                                "Looking for more ideas, themes & strategies?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => allsmallcase()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue, width: 1),
                                      color: const Color.fromRGBO(32, 42, 52, 1),
                                      borderRadius:
                                      const BorderRadius.all(Radius.circular(5))),
                                  margin: const EdgeInsets.all(10),
                                  width: 150,
                                  height: 50,
                                  child: const Center(
                                    child: Text(
                                      "See all smallcases",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(29, 30, 32, 1));
  }
}
