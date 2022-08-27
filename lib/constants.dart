import 'package:flutter/material.dart';
import 'package:newtry/Home.dart';

const kContainerDecoration = BoxDecoration(
  borderRadius:
  BorderRadius.all(Radius.circular(12)),
  color: Color.fromRGBO(39, 40, 42, 1),
); //case decoration, rural rising demand, digital inclusion, affordable housing

const kVolatilityDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5),
        bottomLeft: Radius.circular(5)),
    color:
    Color.fromRGBO(153, 128, 64, 1));

const kTextStyleTitle = TextStyle(fontSize: 20);

const kTextStyleDesc = TextStyle(fontSize: 15, color: Colors.grey);

const kQuoteTextStyle =  TextStyle(color: Colors.grey, fontSize: 17);

const kCAGRPercTextStyle =  TextStyle(color: Colors.green, fontSize: 18);

const kMinAmountTextStyle = TextStyle(color: Colors.white, fontSize: 18);

