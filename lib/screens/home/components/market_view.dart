import 'package:flutter/material.dart';
class MarketView extends StatefulWidget {
  static String routeName="/market_view";
  const MarketView({Key? key}) : super(key: key);

  @override
  State<MarketView> createState() => _MarketViewState();
}

class _MarketViewState extends State<MarketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text("Market View"),
       backgroundColor: Colors.deepOrangeAccent,
     ),
      backgroundColor: Colors.white,
    );
  }
}

