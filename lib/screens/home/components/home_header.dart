
import 'package:flutter/cupertino.dart';
import 'package:krishak_farma/screens/home/components/search_bar.dart';

import '../../../size_config.dart';
import 'addproduct.dart';
import 'icon_but_with_cnt.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              //Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
              //Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
              Navigator.pushNamed(context, AddProduct.routeName);
            }
          ),
          //Admin(),  // removed from search field add cart
          //CustomBottomNavBar()
        ],
      ),
    );
  }
}
