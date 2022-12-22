import 'package:flutter/material.dart';
class Advice extends StatefulWidget {
  static String routeName="/advice";
  const Advice({Key? key}) : super(key: key);

  @override
  State<Advice> createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Advice"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}

