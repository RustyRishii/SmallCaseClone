import 'package:flutter/material.dart';
import 'package:yahoofin/yahoofin.dart';
import 'package:yahoofin/src/models/stock_chart.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

final yfin = YahooFin();

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create"),
          centerTitle: false,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            var yfin = YahooFin();
            StockHistory hist = yfin.initStockHistory(ticker: "GOOG");
            StockChart chart = await yfin.getChartQuotes(
                stockHistory: hist,
                interval: StockInterval.oneDay,
                period: StockRange.fiveYear);
            print(chart.chartQuotes!.timestamp);
          },
          child: ListView(
            children: <Widget> [
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(33, 34, 36, 1));
  }
}