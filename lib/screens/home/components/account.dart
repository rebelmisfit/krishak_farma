
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../profile/profile_screen.dart';
import 'icon_but_with_cnt.dart';


class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           Container(
             padding: EdgeInsets.all(getProportionateScreenWidth(10)),
             height: getProportionateScreenWidth(46),
             width: getProportionateScreenWidth(46),
             decoration: BoxDecoration(
               color: kSecondaryColor.withOpacity(0.1),
               shape: BoxShape.circle,

             ),
             //child: SvgPicture.asset("assets/icons/User Icon.svg"),
             child: IconBtnWithCounter(
               svgSrc: "assets/icons/User.svg",
               press: () => Navigator.pushNamed(context,ProfileScreen.routeName), ////////


             ),
           )
          ],
        ),
      ),
    );
  }
}


