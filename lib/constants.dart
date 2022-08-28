import 'package:flutter/material.dart';
import 'package:newtry/Home.dart';

const kContainerDecoration = BoxDecoration(
  borderRadius:
  BorderRadius.all(Radius.circular(12)),
  color: Color.fromRGBO(39, 40, 42, 1),
); //case decoration, rural rising demand, digital inclusion, affordable housing

const kVolatilityDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
    bottomLeft: Radius.circular(5)),
    color: Color.fromRGBO(153, 128, 64, 1));

const kTextStyleTitle = TextStyle(fontSize: 20);

const kTextStyleDesc = TextStyle(fontSize: 15, color: Colors.grey);

const kQuoteTextStyle =  TextStyle(color: Colors.grey, fontSize: 17);

const kCAGRPercTextStyle =  TextStyle(color: Colors.green, fontSize: 18);

const kMinAmountTextStyle = TextStyle(color: Colors.white, fontSize: 18);


//Discover page
//1.Filters you can try

/*
Icon ArrowIcon = const Icon(
  Icons.arrow_right_alt_rounded,
  color: Colors.green,
  size: 35,
);


 */

class DiscoverContainer extends StatelessWidget {
  const DiscoverContainer({Key? key, required this.text, required this.ArrowIcon, required this.circleIcon}) : super(key: key);

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
          borderRadius:
          BorderRadius.all(Radius.circular(10))),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 10, 0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(height: 10),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: circleIcon
                ),
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



