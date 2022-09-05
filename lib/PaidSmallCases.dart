import 'package:flutter/material.dart';
import 'constants.dart';

class Paid extends StatefulWidget {
  const Paid({Key? key}) : super(key: key);

  @override
  State<Paid> createState() => _PaidState();
}

class _PaidState extends State<Paid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SizedBox(height: 10),
        ExpertCuratedSmallCase(
          imageString: 'https://assets.smallcase.com/images/smallcases/200/SCET_0004.png',
          titleText: 'Top 100 stocks',
          managerName: 'by Windmill capital',
          descText: 'India\'s most powerful companies in one portfolio. solid stability',
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
    );
  }
}
