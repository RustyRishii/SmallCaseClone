import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String quote = "";
final Widget iconTest = Icons.bookmark_border as Widget;

class _HomeState extends State<Home> {
  @override
  initState() {
    super.initState();
    () async {
      var url = Uri.parse('http://api.quotable.io/random');
      var response = await http.get(url);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      var data = jsonDecode(response.body);
      quote = data["content"];

      await Future.delayed(const Duration(microseconds: 1500));

      setState(() {});
    };
    print("rusty");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            var url = Uri.parse('http://api.quotable.io/random');
            var response = await http.get(url);
            print('Response status: ${response.statusCode}');
            print('Response body: ${response.body}');

            var data = jsonDecode(response.body);
            quote = data["content"];

            await Future.delayed(const Duration(microseconds: 1500));

            setState(() {});
          },
          child: ListView(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: const <Widget>[
                          SizedBox(height: 35),
                          Text(
                            "Hola, Rishikesh!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ],
                      ),
                    ), //Hola
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: <Widget>[
                          Image.network(
                              "https://cdn2.iconfinder.com/data/icons/color-svg-vector-icons-part-2/512/quote_talk_bubble_comment-512.png",
                              scale: 19),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(quote,
                                style: kQuoteTextStyle),
                            //style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        ],
                      ),
                    ), //image and quote
                    //const SizedBox(height: 5),
                    Container(
                      decoration: const BoxDecoration(
                        //border: Border.all(width: 5, color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromRGBO(42, 43, 45, 1),
                      ),
                      margin: const EdgeInsets.all(15),
                      width: 500,
                      height: 125,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            children: const <Widget>[
                              SizedBox(width: 25),
                              Text("Investment Overview",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ],
                          ), //sized box and "investment overview"
                          const SizedBox(height: 20),
                          Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                SizedBox(width: 25),
                                Text("NIFTY",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey)),
                                SizedBox(width: 200),
                                Text("Current Value",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey)),
                              ]), //2 Sizedboxes and "NIFTY", "Current Value"
                          Row(children: const <Widget>[
                            SizedBox(width: 25),
                            Text("16,520.84",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(width: 170),
                            Text("₹25,227",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600))
                          ]), //2 Sizedboxes and values
                        ],
                      ),
                    ), //Investment overview
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              //border: Border.all(width: 5, color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Color.fromRGBO(62, 132, 165, 1),
                            ),
                            margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            //color: Colors.blue,
                            width: 310,
                            height: 200,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 25),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text("SIP installment due",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(width: 20, height: 50),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 25),
                                        child: Text(
                                          "Maintain your streak. Complete SIP for All Weather Investing smallcase",
                                          style: TextStyle(
                                              fontSize: 14.3,
                                              color: Colors.grey[200]),
                                          maxLines: 2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 35),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 140,
                                      height: 45,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white),
                                        child: Text(
                                          "complete SIP",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ), //Complete SIP
                          Container(
                            decoration: const BoxDecoration(
                              //border: Border.all(width: 5, color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Color.fromRGBO(129, 104, 82, 1),
                            ),
                            margin: const EdgeInsets.all(15),
                            //color: Colors.blue,
                            width: 310,
                            height: 200,
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 25),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20),
                                    Text("Take a look at your portfolio",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(width: 20, height: 50),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 25),
                                        child: Text(
                                          "Check your smallcase portfolio for adequate diversification",
                                          style: TextStyle(
                                              fontSize: 14.3,
                                              color: Colors.grey[200]),
                                          maxLines: 2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 35),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 215,
                                      height: 45,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white),
                                        child: Text(
                                          "Check Portfolio Health",
                                          style: TextStyle(
                                              color: Colors.blue[700],
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ), //Portfolio health
                        ],
                      ),
                    ),
                    //const SizedBox(height: 5),
                    Row(
                      children: const <Widget>[
                        SizedBox(width: 15),
                        Text(
                          "Your watchlist",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: const <Widget>[
                        SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            "Track and observe your future investments",
                            maxLines: 2,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Start watchlisting >",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: const <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Popular investment idea",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Ideas are trending among investors ⚡",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: kContainerDecoration,
                            margin: const EdgeInsets.all(10),
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
                                      decoration: kVolatilityDecoration,
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
                                        style: kTextStyleTitle,
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
                                        style: kTextStyleDesc,
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
                                          style: kCAGRPercTextStyle,
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
                                          style: kMinAmountTextStyle,
                                        )
                                      ],
                                    ),
                                    const Icon(Icons.bookmark_border,
                                        color: Colors.grey),
                                  ],
                                ),
                              ],
                            ),
                          ), //Rural demand
                          Container(
                            decoration: kContainerDecoration,
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
                                          "https://assets.smallcase.com/images/smallcases/200/SCNM_0014.png",
                                          height: 50,
                                          width: 50),
                                    ),
                                    const SizedBox(width: 130),
                                    Container(
                                      decoration: kVolatilityDecoration,
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
                                        "Digital Inclusion",
                                        style: kTextStyleTitle,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    SizedBox(width: 20, height: 1),
                                    Expanded(
                                      child: Text(
                                        "Comanies spearheading and benefitting from the digital revolution in india",
                                        maxLines: 2,
                                        style: kTextStyleDesc,
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
                                          "6Y CAGR",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          "14.95%",
                                          style: kCAGRPercTextStyle,
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
                                          "₹ 18,390",
                                          style: kMinAmountTextStyle,
                                        )
                                      ],
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          const Icon(Icons.bookmark,
                                              color: Colors.grey);
                                        },
                                        child: const Icon(Icons.bookmark_border,
                                            color: Colors.grey)),
                                  ],
                                ),
                              ],
                            ),
                          ), //Digital inclusion
                          Container(
                            decoration: kContainerDecoration,
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
                                      decoration: kVolatilityDecoration,
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
                                        style: kTextStyleTitle,
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
                                        style: kTextStyleDesc,
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
                                          style: kCAGRPercTextStyle,
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
                                          style: kMinAmountTextStyle,
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
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        //border: Border.all(width: 5, color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color.fromRGBO(42, 43, 45, 1),
                      ),
                      margin: const EdgeInsets.all(15),
                      width: 500,
                      height: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Row(
                            children: const <Widget>[
                              SizedBox(width: 25),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 90),
                                  child: Text(
                                    "Your core smallcase is all set! Explore large-cap smallcases for betterlong term returns",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ],
                          ), //sized box and "investment overview"
                          const SizedBox(width: 20),
                          Row(
                            children: const [
                              SizedBox(width: 25, height: 25),
                              Text(
                                "See next steps",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}