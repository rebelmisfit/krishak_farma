import 'package:flutter/material.dart';
class FlashDeal extends StatefulWidget {
  const FlashDeal({Key? key}) : super(key: key);
  static  String routeName="/flash_deal";

  @override
  State<FlashDeal> createState() => _FlashDealState();
}

class _FlashDealState extends State<FlashDeal> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
     title: const Text("Flash Deal"),
     backgroundColor: Colors.deepOrangeAccent,
   ),
     backgroundColor: Colors.white,
   );
  }
}

