//
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../../../size_config.dart';
// import 'section_title.dart';
// // openURL1() async {
// //   if(await canLaunch("https://www.amazon.in/alm/storefront?almBrandId=ctnow")){
// //     await launch("https://www.amazon.in/alm/storefront?almBrandId=ctnow");
// //
// //   }
// //   else
// //     {
// //       throw 'could not lunch url';
// //     }
// // }
// // openURL2() async {
// //   if(await canLaunch("https://www.swiggy.com/swiggy-instamart")){
// //     await launch("https://www.swiggy.com/swiggy-instamart");
// //
// //   }
// //   else
// //   {
// //     throw 'could not lunch url';
// //   }
// // }
// // openURL3() async {
// //   if(await canLaunch("https://www.bigbasket.com")){
// //     await launch("https://www.bigbasket.com");
// //
// //   }
// //   else
// //   {
// //     throw 'could not lunch url';
// //   }
// // }
// // openURL4() async {
// //   if(await canLaunch("https://blinkit.com/")){
// //     await launch("https://blinkit.com/");
// //
// //   }
// //   else
// //   {
// //     throw 'could not lunch url';
// //   }
// // }
// // openURL5() async {
// //   if(await canLaunch("https://www.flipkart.com/grocery/pr?sid=73z&marketplace=GROCERY")){
// //     await launch("https://www.flipkart.com/grocery/pr?sid=73z&marketplace=GROCERY");
// //
// //   }
// //   else
// //   {
// //     throw 'could not lunch url';
// //   }
// // }
//
// class EcommerceImage extends StatelessWidget {
//   const EcommerceImage({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding:
//           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SectionTitle(
//             title: "Dealers of the day",
//             press: () {},
//           ),
//         ),
//         SizedBox(height: getProportionateScreenWidth(20)),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//
//           child: Row(
//             children: [
//               SpecialOfferCard(
//                 //fit:BoxFit.cover,
//                 image: "assets/images/Amazon Fresh.png",
//
//                 //category: "",
//                // numOfBrands: 18,
//
//                 press: () {},
//               ),
//               SpecialOfferCard(
//                 image: "assets/images/Swiggy-Instamart.png",
//                 //category: "",
//                // numOfBrands: 24,
//                 press: () {},
//               ),
//               SpecialOfferCard(
//
//                 image: "assets/images/bigbasket.png",
//                 //category: "",
//                 //numOfBrands: 24,
//                 press: () {},
//               ),
//               SpecialOfferCard(
//
//                 image: "assets/images/Binkit-Gloffers.png",
//               //  category: "",
//                // numOfBrands: 24,
//                 press: () {},
//               ),
//               SpecialOfferCard(
//
//                 image: "assets/images/Flipkart-Supermart.png",
//                 //  category: "",
//                 // numOfBrands: 24,
//                 press: () {},
//               ),
//               SizedBox(width: getProportionateScreenWidth(20)),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class SpecialOfferCard extends StatelessWidget {
//   const SpecialOfferCard({
//     Key? key,
//    // required this.category,
//     required this.image,
//     //required this.numOfBrands,
//     required this.press, //required Color color,
//   }) : super(key: key);
//
//   final String  image;
//   //final int numOfBrands;
//   final GestureTapCallback press;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
//       child: GestureDetector(
//         onTap: press,
//         child: SizedBox(
//           width: getProportionateScreenWidth(242),
//           height: getProportionateScreenWidth(100),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Stack(
//               children: [
//                 Image.asset(
//                   image,
//                   width: double.infinity,
//                   fit: BoxFit.fitWidth,
//                   //fit: BoxFit.cover,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Color(0xFFFFFFFF).withOpacity(0.1),
//                         Color(0xFFFFFFFF).withOpacity(0.1),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(15.0),
//                     vertical: getProportionateScreenWidth(10),
//                   ),
//                   // child: Text.rich(
//                   //   TextSpan(
//                   //     style: TextStyle(color: Colors.white),
//                   //     children: [
//                   //       TextSpan(
//                   //         text: "$category\n",
//                   //         style: TextStyle(
//                   //           fontSize: getProportionateScreenWidth(18),
//                   //           fontWeight: FontWeight.bold,
//                   //         ),
//                   //       ),
//                   //       TextSpan(text: "$numOfBrands Brands")
//                   //     ],
//                   //   ),
//                   // ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../size_config.dart';
import 'section_title.dart';
import 'package:krishak_farma/screens/home/components/firestorageservices.dart';

openURL1() async {
  if (await canLaunch(
      "https://www.amazon.in/alm/storefront?almBrandId=ctnow")) {
    await launch("https://www.amazon.in/alm/storefront?almBrandId=ctnow");
  }
  else {
    throw 'could not lunch url';
  }
}

openURL2() async {
  if (await canLaunch("https://www.swiggy.com/swiggy-instamart")) {
    await launch("https://www.swiggy.com/swiggy-instamart");
  }
  else {
    throw 'could not lunch url';
  }
}

openURL3() async {
  if (await canLaunch("https://www.bigbasket.com")) {
    await launch("https://www.bigbasket.com");
  }
  else {
    throw 'could not lunch url';
  }
}

openURL4() async {
  if (await canLaunch("https://blinkit.com/")) {
    await launch("https://blinkit.com/");
  }
  else {
    throw 'could not lunch url';
  }
}

openURL5() async {
  if (await canLaunch(
      "https://www.flipkart.com/grocery/pr?sid=73z&marketplace=GROCERY")) {
    await launch(
        "https://www.flipkart.com/grocery/pr?sid=73z&marketplace=GROCERY");
  }
  else {
    throw 'could not lunch url';
  }
}

class EcommerceImage extends StatelessWidget {
  const EcommerceImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            // child: SectionTitle(
            //   title: "Dealers of the day",
            //   press: () {},
            // ),
          ),
          // SizedBox(height: getProportionateScreenWidth(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(300),
                  height: getProportionateScreenWidth(200),
                  child : FutureBuilder(
                    builder: (context,snapshots){
                      if(snapshots.connectionState == ConnectionState.done)
                      {
                        return Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.width/1.2,
                          child: snapshots.data,
                        );


                      }

                      if(snapshots.connectionState == ConnectionState.waiting)
                      {
                        return Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.width/1.2,
                          child: CircularProgressIndicator(),
                        );
                      }

                      return Container();

                    },
                    future: _getImage(context, "Banners/Banner1.png"),
                  ),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  width: getProportionateScreenWidth(300),
                  height: getProportionateScreenWidth(200),
                  child : FutureBuilder(
                    builder: (context,snapshots){
                      if(snapshots.connectionState == ConnectionState.done)
                      {
                        return Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.width/1.2,
                          child: snapshots.data,
                        );
                      }

                      if(snapshots.connectionState == ConnectionState.waiting)
                      {
                        return Container(
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.width/1.2,
                          child: CircularProgressIndicator(),
                        );
                      }

                      return Container();

                    },
                    future: _getImage(context, "Banners/Banner2.png"),


                  ),
                ),

                // SizedBox(
                //   width: getProportionateScreenWidth(300),
                //   height: getProportionateScreenWidth(200),
                //   child: FutureBuilder(
                //     builder: (context,snapshots){
                //       if(snapshots.connectionState == ConnectionState.done)
                //       {
                //         return Container(
                //           width: MediaQuery.of(context).size.width/1.2,
                //           height: MediaQuery.of(context).size.width/1.2,
                //           child: snapshots.data,
                //         );
                //       }
                //
                //       if(snapshots.connectionState == ConnectionState.waiting)
                //       {
                //         return Container(
                //           width: MediaQuery.of(context).size.width/1.2,
                //           height: MediaQuery.of(context).size.width/1.2,
                //           child: CircularProgressIndicator(),
                //         );
                //       }
                //
                //       return Container();
                //
                //     },
                //     future: _getImage(context, "Banners/Banner3.png"),
                //
                //   ),
                // ),
                //
                // SizedBox(
                //     width: getProportionateScreenWidth(300),
                //     height: getProportionateScreenWidth(200),
                //     child: FutureBuilder(
                //
                //       builder: (context,snapshots){
                //         if(snapshots.connectionState == ConnectionState.done)
                //         {
                //           return Container(
                //             //margin: EdgeInsets.all(10.0),
                //             // decoration: BoxDecoration(
                //             //   borderRadius: BorderRadius.only(
                //             //       topRight: Radius.circular(40.0),
                //             //       bottomRight: Radius.circular(40.0),
                //             //       topLeft: Radius.circular(40.0),
                //             //       bottomLeft: Radius.circular(40.0)),
                //             // ),
                //             // decoration: BoxDecoration(
                //             //   borderRadius: BorderRadius.all(Radius.circular(20)),
                //             // ),
                //             width: MediaQuery.of(context).size.width/1.2,
                //             height: MediaQuery.of(context).size.width/1.2,
                //             child: snapshots.data,
                //           );
                //         }
                //
                //         if(snapshots.connectionState == ConnectionState.waiting)
                //         {
                //           return Container(
                //             width: MediaQuery.of(context).size.width/1.2,
                //             height: MediaQuery.of(context).size.width/1.2,
                //             child: CircularProgressIndicator(),
                //           );
                //         }
                //
                //         return Container();
                //
                //       },
                //       future: _getImage(context, "Banners/Banner4.png"),
                //
                //     )
                // )
              ],
            ),


          )

        ]

    );
  }


  Future<Widget> _getImage(BuildContext context, String ImageName) async
  {
    late Image mimage;
    await FireStorageService.loadImages(context, ImageName).then((value) {
      mimage = Image.network(
        value.toString(),
        fit: BoxFit.scaleDown,
      );
    });

    return mimage;
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    // required this.category,
    //required this.image,
    //required this.numOfBrands,
    //required this.press, //required Color color,
  }) : super(key: key);


  //final String image;

  //final int numOfBrands;
  //final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        //onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Image.asset(
                //   //image,
                //   width: double.infinity,
                //   fit: BoxFit.fitWidth,
                //   //fit: BoxFit.cover,
                // ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFFFFF).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.1),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  // child: Text.rich(
                  //   TextSpan(
                  //     style: TextStyle(color: Colors.white),
                  //     children: [
                  //       TextSpan(
                  //         text: "$category\n",
                  //         style: TextStyle(
                  //           fontSize: getProportionateScreenWidth(18),
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //       TextSpan(text: "$numOfBrands Brands")
                  //     ],
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}