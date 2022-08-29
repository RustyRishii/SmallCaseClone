import 'package:flutter/material.dart';

const kQuoteTextStyle = TextStyle(color: Colors.grey, fontSize: 17);

//Discover page
//1.Filters you can try
class DiscoverContainer extends StatelessWidget {
  const DiscoverContainer(
      {Key? key,
      required this.text,
      required this.ArrowIcon,
      required this.circleIcon})
      : super(key: key);

  final String text;
  final Icon ArrowIcon;
  final CircleAvatar circleIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      width: 150,
      height: 190,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 46, 54, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 10, 0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const SizedBox(height: 10),
                CircleAvatar(child: circleIcon),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                ArrowIcon,
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Home page
//1.Popular investment ideas
class SmallCaseContainer extends StatelessWidget {
  const SmallCaseContainer({
    Key? key,
    required this.image,
    required this.volatilityText,
    required this.titleText,
    required this.DescText,
    required this.Cagr,
    required this.CagrReturnText,
    required this.MinAmountText,
    required this.MinAmount,
  }) : super(key: key);

  final String image;
  final String volatilityText;
  final String titleText;
  final String DescText;
  final String Cagr;
  final String CagrReturnText;
  final String MinAmountText;
  final String MinAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color.fromRGBO(39, 40, 42, 1),
      ),
      margin: const EdgeInsets.all(10),
      width: 310,
      height: 230,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(3.1),
                child: Image.network(image, height: 50, width: 50),
              ),
              const SizedBox(width: 130),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                    color: Color.fromRGBO(153, 128, 64, 1)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(volatilityText),
                ),
              ),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(width: 20, height: 40),
              Expanded(
                child: Text(
                  titleText,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const SizedBox(width: 20, height: 1),
              Expanded(
                child: Text(
                  DescText,
                  maxLines: 2,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //const SizedBox(width: 1),
              Column(
                children: <Widget>[
                  Text(
                    Cagr,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    CagrReturnText,
                    style: const TextStyle(color: Colors.green, fontSize: 18),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    MinAmountText,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    MinAmount,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              const Icon(Icons.bookmark_border, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
