import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../size_config.dart';







openURL1(url) async {
  if(await canLaunch(url)){
    await launch(url);

  }
  else
  {
    throw 'could not lunch url';
  }
}











class Categories extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal","url":"https://youtube.com/"},
      {"icon": "assets/icons/adviceImage2.svg", "text": "Advice","url":"https://udemy.com/"},
      //{"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Market View2.svg", "text": "Market View","url":"https://msamb.com/"},
      {"icon": "assets/icons/Discover.svg", "text": " Add Product","url":"https://amazon.com/"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
              (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],


            press: ()=>openURL1(categories[index]["url"]),

          ),


        ),


      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
