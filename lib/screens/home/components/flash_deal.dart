import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addproduct.dart';

class FlashDeal extends StatefulWidget {
  const FlashDeal({Key? key}) : super(key: key);

  @override
  State<FlashDeal> createState() => _FlashDealState();
}

class _FlashDealState extends State<FlashDeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Flash Deal'),

      ),

    );
  }
}