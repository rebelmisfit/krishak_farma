
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krishak_farma/screens/Search/search_item.dart';

import '../../constants.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("Search Product"),


        ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Items"),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: kSecondaryColor.withOpacity(0.1),
                filled: true,
                hintText: "Search for Product to add",
                suffixIcon: Icon(Icons.search_rounded)

              ),

            ),
          ),
          SizedBox(
            height: 10,
          ),
          SearchItem(),
          SearchItem1(),
          SearchItem(),
          SearchItem1(),
          SearchItem(),
        ],
      ),
    );
  }
}
