
import 'package:flutter/material.dart';
import 'package:krishak_farma/screens/home/components/popular_product.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'ecommerceimages.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            EcommerceImage(),
            SizedBox(height: getProportionateScreenWidth(30)),
           PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
