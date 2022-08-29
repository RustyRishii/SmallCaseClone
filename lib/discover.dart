import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newtry/allsmallcases.dart';

import 'constants.dart';

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
                        children: const <Widget>[
                          DiscoverContainer(text: "Low volatility smallcases", ArrowIcon: (Icon(Icons.arrow_right_alt_rounded, color: Colors.green,)), circleIcon: CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.add, color: Colors.white),)),
                          DiscoverContainer(text: "Low investment amount", ArrowIcon: (Icon(Icons.arrow_right_alt_rounded, color: Colors.yellow,)), circleIcon: CircleAvatar(backgroundColor: Colors.yellow, child: Icon(Icons.currency_rupee, color: Colors.white),),),
                          DiscoverContainer(text: "Top Gainers in the last year", ArrowIcon: (Icon(Icons.arrow_right_alt_rounded, color: Colors.green)), circleIcon: CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.call_made, color: Colors.white,),)),
                          DiscoverContainer(text: "Free Access smallcases", ArrowIcon: (Icon(Icons.arrow_right_alt_rounded, color: Colors.blue,)), circleIcon: CircleAvatar(backgroundColor: Colors.blue, child: Icon(Icons.celebration, color: Colors.white,),)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const allsmallcase()));
                      },
                      child: Container(
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
                      ),
                    ),
                    //"See all smallcases"
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        SizedBox(width: 15),
                        Text(
                          "Smallcase",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    //"Smallcases"
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
                    ),
                    //"Specials"
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
                    //"Featured smallcases"
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
                                    BorderRadius.all(Radius.circular(10))),
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
                                  margin: const EdgeInsets.all(5),
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
                                    BorderRadius.all(Radius.circular(10))),
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
                                  margin: const EdgeInsets.all(5),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 20),
                                      Expanded(
                                        child: Text(
                                          "Bottom-up stock picking to identify competitive businesses for long term wealth creation",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
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
                                    BorderRadius.all(Radius.circular(10))),
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
                                  margin: const EdgeInsets.all(5),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 20),
                                      Expanded(
                                        child: Text(
                                          "AI-powered robo advisor creating multi-factor tactical portfolios.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
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
                                    BorderRadius.all(Radius.circular(10))),
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
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_ratd0I9epqtRa_RVxr-b8C9aAR6OnS0l_Q&usqp=CAU",
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
                                  margin: const EdgeInsets.all(5),
                                  child: Row(
                                    children: const [
                                      SizedBox(width: 20),
                                      Expanded(
                                        child: Text(
                                          "Portfolios focused on earning potential upside identified via micro-levels business understanding",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
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
                    const SizedBox(height: 30),
                    Row(
                      children: const <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Collections",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(39, 40, 42, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                height: 130,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Stack(children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: CircleAvatar(
                                          child: Image.network(
                                              "https://assets.smallcase.com/images/collections/200/bqVCsRcdx.png"),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 15, 0, 0),
                                        child: Text(
                                          "Celebrating India@75",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 35, 0, 0),
                                        child: Text("10 smallcases",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15)),
                                      )
                                    ]),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Text(
                                          "Megatrends shaping India's growth story",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(39, 40, 42, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                height: 130,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Stack(children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: CircleAvatar(
                                          child: Image.network(
                                              "https://assets.smallcase.com/images/collections/200/ik9-A3LaD.png"),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 15, 0, 0),
                                        child: Text(
                                          "Popular Investment ideas",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 35, 0, 0),
                                        child: Text("8 smallcases",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15)),
                                      )
                                    ]),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Expanded(
                                          child: Text(
                                            "Smallcases based on ideas that are trending among investors.",
                                            maxLines: 2,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(39, 40, 42, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                height: 130,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Stack(children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: CircleAvatar(
                                          child: Image.network(
                                              "https://assets.smallcase.com/images/collections/200/Bm_jcgRgE.png"),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 15, 0, 0),
                                        child: Text(
                                          "Horizon",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 35, 0, 0),
                                        child: Text("6 smallcases",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15)),
                                      )
                                    ]),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Expanded(
                                          child: Text(
                                            "Goal-based investments for pre-decided time horizons.",
                                            maxLines: 2,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(39, 40, 42, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                height: 130,
                                width: 300,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Stack(children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: CircleAvatar(
                                          child: Image.network(
                                              "https://assets.smallcase.com/images/collections/200/GKPw4-QVb.png"),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 15, 0, 0),
                                        child: Text(
                                          "Idea for New Investors",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 35, 0, 0),
                                        child: Text("2 smallcases",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15)),
                                      )
                                    ]),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Text(
                                          "Megatrends shaping India's growth story",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                      height: 170,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(39, 46, 54, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox(height: 20),
                          Row(
                            children: const <Widget>[
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Brains behind smallcases",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              )
                            ],
                          ),
                          //SizedBox(height: 10),
                          Row(
                            children: const <Widget>[
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Text(
                                    "smallcases are managed by India's leading SEBI-registered finance professionals",
                                    maxLines: 3,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const SizedBox(
                                width: 20,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("See all managers >",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 17)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ), //"Brains behind smallcases"
                    const SizedBox(height: 20),
                    Row(
                      children: const <Widget>[
                        SizedBox(width: 15),
                        Text(
                          "All smallcases",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ), //"ALl smallcases"
                    const SizedBox(height: 5),
                    Row(
                      children: const <Widget>[
                        SizedBox(width: 15),
                        Text(
                          "Expert-curated portfolio for you",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ), //"Expert curated portfolio"
                    const SizedBox(height: 10),
                    Container(
                      //margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(29, 30, 32, 1)),
                      height: 170,
                      width: 700,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  "https://assets.smallcase.com/images/smallcases/200/SCET_0004.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "Top 100 stocks",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "by Windmill capital",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 5),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(33, 42, 55, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                margin: const EdgeInsets.only(
                                    left: 5, top: 20, right: 20),
                                width: 90,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 5, right: 3),
                                  child: Text("Free access",
                                      style: TextStyle(color: Colors.blue)),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              const Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                                size: 35,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "India's most powerful companies in one portfolio. solid stability",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(210, 210, 210, 1)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              //const SizedBox(width: 1),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "4Y CAGR",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "15.35%",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "Min. Amount",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "₹ 2,209",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Color.fromRGBO(153, 128, 64, 1)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Med. Volatility",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ), //top 100 stocks
                    const SizedBox(height: 10),
                    Container(
                      //margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(29, 30, 32, 1)),
                      height: 170,
                      width: 700,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  "https://assets.smallcase.com/images/smallcases/160/SCMO_0014.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "Dividend Aristocrat",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "by Windmill capital",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 5),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(33, 42, 55, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                margin: const EdgeInsets.only(
                                    left: 5, top: 20, right: 20),
                                width: 90,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 5, right: 3),
                                  child: Text("Free access",
                                      style: TextStyle(color: Colors.blue)),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              const Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                                size: 35,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Companies that have been consistently increasing  dividends. Extra goodness",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(210, 210, 210, 1)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              //const SizedBox(width: 1),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "6Y CAGR",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "22.88%",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "Min. Amount",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "₹ 43,278",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Color.fromRGBO(153, 128, 64, 1)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Med. Volatility",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ), //Dividend aristocrat
                    const SizedBox(height: 10),
                    Container(
                      //margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(29, 30, 32, 1)),
                      height: 170,
                      width: 700,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  "https://assets.smallcase.com/images/smallcases/160/SCMO_0029.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "CANSLIM-esque",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "by Windmill capital",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 165,
                              ),
                              const Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                                size: 35,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Efficeintly managed growing companies experiencing positive momentum, screened using CANSLIM method",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(210, 210, 210, 1)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              //const SizedBox(width: 1),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "5Y CAGR",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "24.26%",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "Min. Amount",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "₹ 40,000",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Color.fromRGBO(153, 128, 64, 1)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Med. Volatility",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ), //CANSLIM
                    const SizedBox(height: 10),
                    Container(
                      //margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(29, 30, 32, 1)),
                      height: 170,
                      width: 700,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  "https://assets.smallcase.com/images/smallcases/160/NIVTR_0001.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "Green Energy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "by Nivehshaay",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 165),
                              const Icon(
                                Icons.bookmark_border,
                                color: Colors.grey,
                                size: 35,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "A portfolio of stcoks, which will get benefit  form the RE sector development. Rec amount > 2 lac",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(210, 210, 210, 1)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              //const SizedBox(width: 1),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "1Y CAGR",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "82.30%",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Column(
                                children: const <Widget>[
                                  Text(
                                    "Min. Amount",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "₹ 57,457",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Color.fromRGBO(128, 0, 0, 1)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "High Volatility",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ), //Green Energy
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const allsmallcase()));
                      },
                      child: Container(
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
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}
