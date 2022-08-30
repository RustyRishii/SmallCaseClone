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
                          DiscoverContainer(
                              text: "Low volatility smallcases",
                              ArrowIcon: (Icon(
                                Icons.arrow_right_alt_rounded,
                                color: Colors.green,
                              )),
                              circleIcon: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Icon(Icons.add, color: Colors.white),
                              )),
                          DiscoverContainer(
                            text: "Low investment amount",
                            ArrowIcon: (Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Colors.yellow,
                            )),
                            circleIcon: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              child: Icon(Icons.currency_rupee,
                                  color: Colors.white),
                            ),
                          ),
                          DiscoverContainer(
                              text: "Top Gainers in the last year",
                              ArrowIcon: (Icon(Icons.arrow_right_alt_rounded,
                                  color: Colors.green)),
                              circleIcon: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.call_made,
                                  color: Colors.white,
                                ),
                              )),
                          DiscoverContainer(
                              text: "Free Access smallcases",
                              ArrowIcon: (Icon(
                                Icons.arrow_right_alt_rounded,
                                color: Colors.blue,
                              )),
                              circleIcon: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.celebration,
                                  color: Colors.white,
                                ),
                              )),
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
                        children: const <Widget>[
                          FeaturedSmallcase(
                            imageString:
                                'https://assets.smallcase.com/images/smallcases/200/SCET_0005.png',
                            ranking: 'Popular',
                            titleText: 'Equit & Gold',
                            managerName: 'By Windmill capital',
                            viewerText: 'Viewed over 40k in the last month',
                          ), // Equity and gold
                          FeaturedSmallcase(
                            imageString:
                                'https://assets.smallcase.com/images/smallcases/200/SCET_0004.png',
                            ranking: 'Emerging',
                            titleText: 'Top 100 stocks',
                            managerName: 'By Windmill capital',
                            viewerText:
                                'Over 3k investors started SIP in last month',
                          ), //Top 100 stocks
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
                    ), //featured smallcases
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const <Widget>[
                          FeaturedSmallcasePT2(
                            imageString:
                                'https://pbs.twimg.com/profile_images/1455178352961064961/KiiYF5cG_400x400.jpg',
                            Ranking: 'Popular',
                            Manager: 'Windmill capital',
                            SmallCaseNumbers: '54 smallcases',
                            SmallCaseDesc:
                                'Ideas based on portfolios, backed by fundamental analysis, % powered by data',
                          ),
                          //Windmill capital
                          FeaturedSmallcasePT2(
                            imageString: 'https://st3.depositphotos.com/1561359/12975/i/600/depositphotos_129758586-stock-photo-3d-green-letter-g.jpg',
                            Ranking: 'Trending',
                            Manager: 'Green Portfolio',
                            SmallCaseNumbers: '6 smallcases',
                            SmallCaseDesc: 'Bottom-up stock picking to identify competitive businesses for long term wealth creation',
                          ),
                          //Green portfolio
                          FeaturedSmallcasePT2(
                            imageString: 'https://i.pinimg.com/originals/c2/3e/04/c23e04644d57528303215b12bd1d08df.jpg',
                            Ranking: 'Popular',
                            Manager: 'Wright Research',
                            SmallCaseNumbers: '11 smallcases',
                            SmallCaseDesc: 'AI-powered robo advisor creating multi-factor tactical portfolios.',
                          ),
                          //Wright research
                          FeaturedSmallcasePT2(
                            imageString: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_ratd0I9epqtRa_RVxr-b8C9aAR6OnS0l_Q&usqp=CAU',
                            Ranking: 'Trending',
                            Manager: 'Niveshaay',
                            SmallCaseNumbers: '4 smallcases',
                            SmallCaseDesc: 'Portfolios focused on earning potential upside identified via micro-levels business understanding',
                          ),
                          //Niveshaay
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
                            children: const <Widget>[
                              CollectionsContainer(
                                  imageString: 'https://assets.smallcase.com/images/collections/200/bqVCsRcdx.png',
                                  titletext: 'Celebrating India@75',
                                  NumberOfSmallCases: '10 smallcases',
                                  Desctext: 'Megatrends shaping India\'s growth story'), //"Celebrate india@75"
                              CollectionsContainer(
                                  imageString: 'https://assets.smallcase.com/images/collections/200/ik9-A3LaD.png',
                                  titletext: 'Popular investment ideas',
                                  NumberOfSmallCases: '8 smallcases',
                                  Desctext: 'Smallcases based on ideas that are trending among investors.'), //"Popular investment ideas"
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: const <Widget>[
                              CollectionsContainer(
                                  imageString: 'https://assets.smallcase.com/images/collections/200/Bm_jcgRgE.png',
                                  titletext: 'Horizon',
                                  NumberOfSmallCases: '6 smallcases',
                                  Desctext: 'Goal-based investments for pre-decided time horizons.'), //"Horizon"
                              CollectionsContainer(
                                  imageString: 'https://assets.smallcase.com/images/collections/200/GKPw4-QVb.png',
                                  titletext: 'Ideas for new investors',
                                  NumberOfSmallCases: '2 smallcases',
                                  Desctext: 'Megatrends shaping India\'s growth story'), //"Ideas for new investors"
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
                    Column(
                      children: const <Widget>[
                        SizedBox(height: 10),
                        ExpertCuratedSmallCase(
                          imageString:
                              'https://assets.smallcase.com/images/smallcases/200/SCET_0004.png',
                          titleText: 'Top 100 stocks',
                          managerName: 'by Windmill capital',
                          descText:
                              'India\'s most powerful companies in one portfolio. solid stability',
                          cagrText: '4Y CAGR',
                          returnPercText: '15.35%',
                          returnAmountText: '₹ 2,209',
                          volatilityText: 'Med. Volatility',
                        ), //top 100 stocks
                        SizedBox(height: 10),
                        ExpertCuratedSmallCase(
                          imageString:
                              'https://assets.smallcase.com/images/smallcases/160/SCMO_0014.png',
                          titleText: 'Dividend Aristocra',
                          managerName: 'by Windmill capital',
                          descText:
                              'Companies that have been consistently increasing  dividends. Extra goodness',
                          cagrText: '6Y CAGR',
                          returnPercText: '22.88%',
                          returnAmountText: '₹ 43,278',
                          volatilityText: 'Med. Volatility',
                        ), //Dividend aristocrat
                        SizedBox(height: 10),
                        ExpertCuratedSmallCase(
                          imageString:
                              'https://assets.smallcase.com/images/smallcases/160/SCMO_0029.png',
                          titleText: 'CANSLIM-esque',
                          managerName: 'by Windmill capital',
                          descText:
                              'Efficeintly managed growing companies experiencing positive momentum, screened using CANSLIM method',
                          cagrText: '5Y CAGR',
                          returnPercText: '24.26%',
                          returnAmountText: '₹ 40,000',
                          volatilityText: 'Med. Volatility',
                        ), //CANSLIM
                        SizedBox(height: 10),
                        ExpertCuratedSmallCase(
                          imageString:
                              'https://assets.smallcase.com/images/smallcases/160/NIVTR_0001.png',
                          titleText: 'Green Energy',
                          managerName: 'by niveshaay',
                          descText:
                              'A portfolio of stcoks, which will get benefit  form the RE sector development. Rec amount > 2 lac',
                          cagrText: '1Y CAGR',
                          returnPercText: '82.30%',
                          returnAmountText: '₹ 57,457',
                          volatilityText: 'Med. Volatility',
                        ), //Green Energy
                        //const SizedBox(height: 10),
                      ],
                    ),

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
