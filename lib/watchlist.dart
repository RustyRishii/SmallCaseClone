import 'package:flutter/material.dart';
import 'package:newtry/Home.dart';
import 'package:newtry/constants.dart';
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
                        SmallCaseContainer(
                          image:
                          "https://assets.smallcase.com/images/smallcases/200/SCNM_0012.png",
                          volatilityText: 'Med.Volatility',
                          titleText: 'Rising Rural Demand',
                          DescText:
                          "Comapnies that stand to benefit from the increasing rural consumption",
                          Cagr: '6Y CAGR',
                          CagrReturnText: '15.35%',
                          MinAmountText: 'Min.Amount',
                          MinAmount: '₹56,601',
                        ), //"Rising rural demand"
                        SmallCaseContainer(
                          image:
                          "https://assets.smallcase.com/images/smallcases/160/SCET_0005.png",
                          volatilityText: 'Low Volatility',
                          titleText: 'Equity & Gold',
                          DescText:
                          "Create wealth with equities, stay protected with Gold. The sweet spot",
                          Cagr: '4Y CAGR',
                          CagrReturnText: '16.01%',
                         MinAmountText: 'Min.Amount',
                          MinAmount: '₹277',
                        ), //"Equity and gold"
                        SmallCaseContainer(
                          image:
                          "https://assets.smallcase.com/images/smallcases/200/SCNM_0024.png",
                          volatilityText: 'Med. Volatility',
                          titleText: 'Affordable Housing',
                          DescText:
                          "Comapnies participating in and benefitting from affordable housing projects",
                          Cagr: '6Y CAGR',
                          CagrReturnText: '11.78%',
                          MinAmountText: 'Min.Amount',
                          MinAmount: '₹39,802',
                        ), //"Affordable Housing"
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12)),
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
                        ) //"More strategies"
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
