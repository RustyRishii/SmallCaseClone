import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Discover"),
          centerTitle: false,
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: ListView(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Row(
                            children: const <Widget>[
                              Text("Discover smallcases",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ), //"Discover smallcases"
                          Row(
                            children: const <Widget>[
                              Text(
                                "Managed by professionals",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              )
                            ],
                          ), //"Managed by professionals"
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(68, 121, 103, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 500,
                      height: 200,
                      margin:
                          const EdgeInsets.only(left: 10, top: 5, right: 10),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              const SizedBox(width: 15),
                              Text(
                                "Find your next smallcase",
                                style: TextStyle(
                                    color: Colors.grey[200], fontSize: 18),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const <Widget>[
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  "Rishikesh, move forward in your investment journey",
                                  maxLines: 3,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.1,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(width: 150)
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const SizedBox(width: 15),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                child: Text(
                                  "See next steps",
                                  style: TextStyle(
                                      color: Colors.blue[700], fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: const <Widget>[
                        SizedBox(height: 20, width: 15),
                        Text(
                          "Filters you can try",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            width: 150,
                            height: 190,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 46, 54, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(height: 10),
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        child: Icon(Icons.add,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Low",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Volatility",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Smallcases",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 21),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 1),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.arrow_right_alt_rounded,
                                        color: Colors.green,
                                        size: 35,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            width: 150,
                            height: 190,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 46, 54, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(height: 10),
                                      CircleAvatar(
                                        backgroundColor:
                                            Color.fromRGBO(244, 197, 91, 1),
                                        child: Icon(Icons.currency_rupee,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Low",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "investment",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "amount",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 21),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 1),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.arrow_right_alt_rounded,
                                        color: Colors.green,
                                        size: 35,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            width: 150,
                            height: 190,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 46, 54, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(height: 10),
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        child: Icon(Icons.call_made,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Top",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Gainers",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "in last year",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 21),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 1),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.arrow_right_alt_rounded,
                                        color: Colors.green,
                                        size: 35,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 10),
                            width: 150,
                            height: 190,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 46, 54, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(height: 10),
                                      CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        child: Icon(Icons.celebration,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Free",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "Access",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const [
                                      Text(
                                        "smallcases",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 21),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 1),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.arrow_right_alt_rounded,
                                        color: Colors.green,
                                        size: 35,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          color: const Color.fromRGBO(32, 42, 52, 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      margin: const EdgeInsets.all(10),
                      height: 50,
                      child: const Center(
                        child: Text(
                          "See all smallcases >",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ), //"See all smallcases"
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        SizedBox(width: 15),
                        Text(
                          "Smallcase",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ), //"Smallcases"
                    Row(
                      children: const [
                        SizedBox(width: 15),
                        Text(
                          "Specials ✨",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ), //"Specials"
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        SizedBox(width: 10),
                        Text(
                          "Featured smallcases",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ), //"Featured smallcases"
                    const SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 40, 42, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 170,
                            width: 320,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(3.1),
                                      child: Image.network(
                                        "https://assets.smallcase.com/images/smallcases/200/SCET_0005.png",
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    const Text(
                                      "Nice",
                                      style: TextStyle(
                                          fontSize: 33,
                                          color: Color.fromRGBO(39, 40, 42, 1)),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(44, 49, 81, 5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      margin: const EdgeInsets.all(10),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Popular",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ), //Image
                                const SizedBox(height: 10),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Equity & Gold",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                  ],
                                ), //Equity and gold
                                const SizedBox(height: 5),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "by Windmill capital",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Viewed over 40k in the last month",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ) //Windmill capital
                              ],
                            ),
                          ), // Equity and gold
                          Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 40, 42, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 170,
                            width: 320,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(3.1),
                                      child: Image.network(
                                          "https://assets.smallcase.com/images/smallcases/200/SCET_0004.png",
                                          height: 50,
                                          width: 50),
                                    ),
                                    const Text(
                                      "Nice",
                                      style: TextStyle(
                                          fontSize: 33,
                                          color: Color.fromRGBO(39, 40, 42, 1)),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(44, 49, 81, 5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      margin: const EdgeInsets.all(10),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Popular",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ), //Image
                                const SizedBox(height: 10),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "Top 100 stocks",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                  ],
                                ), //Equity and gold
                                const SizedBox(height: 5),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "by Windmill capital",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Over 3k investors started SIP in last month",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ) //Windmill capital
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        SizedBox(width: 10),
                        Text(
                          "Featured smallcases",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 40, 42, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            height: 200,
                            width: 320,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(3.1),
                                      child: Image.network(
                                          "https://pbs.twimg.com/profile_images/1455178352961064961/KiiYF5cG_400x400.jpg",
                                          height: 50,
                                          width: 50),
                                    ),
                                    const Text(
                                      "Nice",
                                      style: TextStyle(
                                          color: Color.fromRGBO(39, 40, 42, 1),
                                          fontSize: 35),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(44, 49, 81, 5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      margin: const EdgeInsets.all(10),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Popular",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "Windmill capital",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "54 smallcases",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 20),
                                      Expanded(
                                          child: Text(
                                        "Idea based on portfolios, backed by fundamental analysis, & powered by data.",
                                        style: TextStyle(color: Colors.white),
                                        maxLines: 2,
                                      )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 40, 42, 1),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5))),
                            height: 200,
                            width: 320,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(3.1),
                                      child: Image.network(
                                          "https://st3.depositphotos.com/1561359/12975/i/600/depositphotos_129758586-stock-photo-3d-green-letter-g.jpg",
                                          height: 50,
                                          width: 50),
                                    ),
                                    const Text(
                                      "Nice",
                                      style: TextStyle(
                                          color: Color.fromRGBO(39, 40, 42, 1),
                                          fontSize: 35),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(44, 49, 81, 5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      margin: const EdgeInsets.all(10),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Trending",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "Green Portfolio",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "6 smallcases",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 20),
                                      Expanded(
                                          child: Text(
                                            "Bottom-up stock picking to identify competitive businesses for long term wealth creation",
                                            style: TextStyle(color: Colors.white,fontSize: 14),
                                            maxLines: 3,
                                          ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 40, 42, 1),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5))),
                            height: 200,
                            width: 320,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(3.1),
                                      child: Image.network(
                                          "https://i.pinimg.com/originals/c2/3e/04/c23e04644d57528303215b12bd1d08df.jpg",
                                          height: 50,
                                          width: 50),
                                    ),
                                    const Text(
                                      "Nice",
                                      style: TextStyle(
                                          color: Color.fromRGBO(39, 40, 42, 1),
                                          fontSize: 35),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(44, 49, 81, 5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      margin: const EdgeInsets.all(10),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Popular",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "Wright Research",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "11 smallcases",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 20),
                                      Expanded(
                                        child: Text(
                                          "AI-powered robo advisor creating multi-factor tactical portfolios.",
                                          style: TextStyle(color: Colors.white,fontSize: 14),
                                          maxLines: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(39, 40, 42, 1),
                                borderRadius:
                                BorderRadius.all(Radius.circular(5))),
                            height: 200,
                            width: 320,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(3.1),
                                      child: Image.network(
                                          "https://i.pinimg.com/originals/c2/3e/04/c23e04644d57528303215b12bd1d08df.jpg",
                                          height: 50,
                                          width: 50),
                                    ),
                                    const Text(
                                      "Nice",
                                      style: TextStyle(
                                          color: Color.fromRGBO(39, 40, 42, 1),
                                          fontSize: 35),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(44, 49, 81, 5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      margin: const EdgeInsets.all(10),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "Trending",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "Niveshaay",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text(
                                      "4 smallcases",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 20),
                                      Expanded(
                                        child: Text(
                                          "Portfolios focused on earning potential upside identified via micro-levels business understanding",
                                          style: TextStyle(color: Colors.white,fontSize: 14),
                                          maxLines: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}
