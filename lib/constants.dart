import 'package:flutter/material.dart';

const kQuoteTextStyle = TextStyle(color: Colors.grey, fontSize: 17);

Icon blueBookMark = const Icon(Icons.bookmark, color: Colors.blue);
Icon bookMarkBorder = const Icon(Icons.bookmark_border);

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
                  ),
                ],
              ),
              IconButton(
                color: Colors.grey,
                onPressed: () {
                  if(Icon == bookMarkBorder)
                    {
                      bookMarkBorder = blueBookMark;
                    }
                  else
                    {
                      blueBookMark = bookMarkBorder;
                    }
                },
                icon: bookMarkBorder
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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

//Discover page
//2.Featured smallcases
class FeaturedSmallcase extends StatelessWidget {
  const FeaturedSmallcase({
    Key? key,
    required this.imageString,
    required this.ranking,
    required this.titleText,
    required this.managerName,
    required this.viewerText,
  }) : super(key: key);

  final String imageString;
  final String ranking;
  final String titleText;
  final String managerName;
  final String viewerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 40, 42, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 170,
      width: 320,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(3.1),
                child: Image.network(
                  imageString,
                  height: 50,
                  width: 50,
                ),
              ),
              const Text(
                "Nice",
                style: TextStyle(
                    fontSize: 33, color: Color.fromRGBO(39, 40, 42, 1)),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(44, 49, 81, 5),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    ranking,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ), //Image
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 20,
              ),
              Text(
                titleText,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ],
          ), //Equity and gold
          const SizedBox(height: 5),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 20,
              ),
              Text(
                managerName,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 20,
              ),
              Text(
                viewerText,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ) //Windmill capital
        ],
      ),
    );
  }
}

//Discover page
//3.Featured SmallCasesPT2
class FeaturedSmallcasePT2 extends StatelessWidget {
  const FeaturedSmallcasePT2({
    Key? key,
    required this.imageString,
    required this.Ranking,
    required this.Manager,
    required this.SmallCaseNumbers,
    required this.SmallCaseDesc,
  }) : super(key: key);

  final String imageString;
  final String Ranking;
  final String Manager;
  final String SmallCaseNumbers;
  final String SmallCaseDesc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 40, 42, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 200,
      width: 320,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(3.1),
                child: Image.network(imageString, height: 50, width: 50),
              ),
              const Text(
                "Nice",
                style: TextStyle(
                    color: Color.fromRGBO(39, 40, 42, 1), fontSize: 35),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(44, 49, 81, 5),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    Ranking,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: <Widget>[
              const SizedBox(width: 20),
              Text(
                Manager,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Row(
            children: <Widget>[
              const SizedBox(width: 20),
              Text(
                SmallCaseNumbers,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Expanded(
                    child: Text(
                  SmallCaseDesc,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 2,
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//Discover page
//4.collections
class CollectionsContainer extends StatelessWidget {
  const CollectionsContainer({
    Key? key,
    required this.imageString,
    required this.titletext,
    required this.NumberOfSmallCases,
    required this.Desctext,
  }) : super(key: key);

  final String imageString;
  final String titletext;
  final String NumberOfSmallCases;
  final String Desctext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 40, 42, 1),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      height: 130,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                child: Image.network(imageString),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 15, 0, 0),
              child: Text(
                titletext,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 35, 0, 0),
              child: Text(NumberOfSmallCases,
                  style: const TextStyle(color: Colors.grey, fontSize: 15)),
            )
          ]),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  Desctext,
                  maxLines: 2,
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//Discover page
//5.Expert curated
class ExpertCuratedSmallCase extends StatelessWidget {
  const ExpertCuratedSmallCase({
    Key? key,
    required this.imageString,
    required this.titleText,
    required this.managerName,
    required this.descText,
    required this.cagrText,
    required this.returnPercText,
    required this.returnAmountText,
    required this.volatilityText,
  }) : super(key: key);

  final String imageString;
  final String titleText;
  final String managerName;
  final String descText;
  final String cagrText;
  final String returnPercText;
  final String returnAmountText;
  final String volatilityText;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20),
      //margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(color: Color.fromRGBO(29, 30, 32, 1)),
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
                  imageString,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    titleText,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    managerName,
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
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                margin: const EdgeInsets.only(left: 5, top: 20, right: 20),
                width: 90,
                child: const Padding(
                  padding: EdgeInsets.only(left: 5, right: 3),
                  child:
                      Text("Free access", style: TextStyle(color: Colors.blue)),
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
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  descText,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(210, 210, 210, 1)),
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
                children: <Widget>[
                  Text(
                    cagrText,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    returnPercText,
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                width: 11,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Min. Amount",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    returnAmountText,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                width: 11,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromRGBO(153, 128, 64, 1)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    volatilityText,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}