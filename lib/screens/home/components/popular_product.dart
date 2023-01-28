import 'package:flutter/material.dart';
import 'package:krishak_farma/screens/home/components/addproduct.dart';

import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'section_title.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krishak_farma/constants.dart';
import 'package:krishak_farma/size_config.dart';

class PopularProducts extends StatelessWidget {

  final firestore = FirebaseFirestore.instance.collection('popularproduct')
      .snapshots();


  @override
  Widget build(BuildContext context) {
    AddProduct();

    return Column(

      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Top pricing Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

            children: [

              StreamBuilder<QuerySnapshot>(
                  stream: firestore,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshots) {
                    if (snapshots.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }

                    if (snapshots.hasError) {
                      return Text("Some Error");
                    }

                    return Expanded(
                        child: ListView.builder(
                            itemCount: snapshots.data?.docs.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(20)),
                                child: SizedBox(
                                  width: getProportionateScreenWidth(width),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                    AspectRatio(
                                    aspectRatio: 1.02,
                                    child: Container(
                                      padding: EdgeInsets.all(
                                          getProportionateScreenWidth(20)),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Hero(
                                        tag: Text(snapshots.data
                                            ?.docs[index]['name']),
                                        child:,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    snapshots.data?.docs[index]['name'],
                                    style: TextStyle(color: Colors.black),
                                    maxLines: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Text(
                                        "\Rs ${snapshots.data
                                            ?.docs[index]['price']}/KG",
                                        style: TextStyle(
                                          fontSize: getProportionateScreenWidth(
                                              18),
                                          fontWeight: FontWeight.w600,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                      InkWell(
                                        borderRadius: BorderRadius.circular(50),
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              getProportionateScreenWidth(8)),
                                          height: getProportionateScreenWidth(
                                              28),
                                          width: getProportionateScreenWidth(
                                              28),
                                          decoration: BoxDecoration(
                                            color:
                                            kPrimaryColor.withOpacity(0.15),
                                            shape: BoxShape.circle,
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/icons/Heart Icon_2.svg",
                                            color:
                                            Color(0xFFFF4848),

                                          ),
                                        ),

                                        ],
                                      )
                                    ],
                                  ),
                                  ]
                                ),
                                )
                              );



                            })

                    );
                  }

              ),
              ...List.generate(
                demoProducts.length,
                    (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }

  List<Product> demoProducts = <Product>[];

  Future<void> Adddata() async {
    try {
      final CollectionReference user = FirebaseFirestore.instance.collection(
          'popularproducts');

      final DocumentSnapshot snapshot = await user.doc('Product1').get();

      String title = snapshot.get('name').toString();
      double price = snapshot.get('price');
      String image = snapshot.get('image').toString();


      Product p1 = Product(
        id: 1,
        images: [
          image,
          //borderRadius: BorderRadius.circular(10),
          //"assets/images/tomatos3.png",// to make small preview when description is open
        ],
        colors: [
          Color(0xFFF6625E),
          Color(0xFF836DB8),
          Color(0xFFDECB9C),
          Colors.white,
        ],
        title: title,
        price: price,
        description: description,
        rating: 4.1,
        isFavourite: true,
        isPopular: true,
      );

      demoProducts.add(p1);
    }
    catch (Exception) {
      print("Unable to fetch");
    }
  }


}
