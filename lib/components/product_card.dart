
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../constants.dart';
import '../models/Product.dart';
import '../screens/home/components/ecommerceimages.dart';
import '../screens/home/components/firestorageservices.dart';
import '../size_config.dart';

class ProductCard1 extends StatelessWidget {
   ProductCard1({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    //required this.name,
     //this.name=""
  }) : super(key: key);

  final double width, aspectRetio;
  //final Product product;
  //String name;
  // Future<void> getName()async {
  //   DocumentSnapshot ds = await
  //   FirebaseFirestore.instance.collection('popularproducts').doc('Product1').get();
  //   //name = ds['name'];
  // }


  @override
  Widget build(BuildContext context) {
    CollectionReference student = FirebaseFirestore.instance.collection('popularproducts');
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.02,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: FutureBuilder(
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
                        //child: CircularProgressIndicator(),
                        // child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     const Skeleton(
                        //       height: 120,
                        //       width: 120,
                        //     ),
                        //     const SizedBox(width: 16,),
                        //     Expanded(
                        //         child: Column(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             const Skeleton(width:80),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             Row(
                        //               children: const[
                        //                 Expanded(child: Skeleton()),
                        //                 SizedBox(width: 16,),
                        //                 Expanded(child: Skeleton()),
                        //               ],
                        //             )
                        //
                        //           ],
                        //         ))
                        //   ],
                        // )
                    );
                  }

                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Skeleton(
                        height: 120,
                        width: 120,
                      ),
                      const SizedBox(width: 16,),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Skeleton(width:80),
                              const SizedBox(height: 8,),
                              const Skeleton(),
                              const SizedBox(height: 8,),
                              const Skeleton(),
                              const SizedBox(height: 8,),
                              Row(
                                children: const[
                                  Expanded(child: Skeleton()),
                                  SizedBox(width: 16,),
                                  Expanded(child: Skeleton()),
                                ],
                              )

                            ],
                          ))
                    ],
                  );

                },
                future: _getImage(context, "TopPricingProduct/image1.png"),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Text(
          //
          //   style: TextStyle(color: Colors.black),
          //   maxLines: 2,
          // ),



          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "\Rs ${product.price}/KG",
          //       style: TextStyle(
          //         fontSize: getProportionateScreenWidth(18),
          //         fontWeight: FontWeight.w600,
          //         color: kPrimaryColor,
          //       ),
          //     ),
          //
          //   ],
          // )
        ],
      ),
      ),
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







class ProductCard2 extends StatelessWidget {
  const ProductCard2({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    //required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  //final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FutureBuilder(
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
                          //child: CircularProgressIndicator(),
                          // child: Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     const Skeleton(
                          //       height: 120,
                          //       width: 120,
                          //     ),
                          //     const SizedBox(width: 16,),
                          //     Expanded(
                          //         child: Column(
                          //           crossAxisAlignment: CrossAxisAlignment.start,
                          //           children: [
                          //             const Skeleton(width:80),
                          //             const SizedBox(height: 8,),
                          //             const Skeleton(),
                          //             const SizedBox(height: 8,),
                          //             const Skeleton(),
                          //             const SizedBox(height: 8,),
                          //             Row(
                          //               children: const[
                          //                 Expanded(child: Skeleton()),
                          //                 SizedBox(width: 16,),
                          //                 Expanded(child: Skeleton()),
                          //               ],
                          //             )
                          //
                          //           ],
                          //         ))
                          //   ],
                          // )
                      );
                    }

                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Skeleton(
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(width: 16,),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Skeleton(width:80),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                Row(
                                  children: const[
                                    Expanded(child: Skeleton()),
                                    SizedBox(width: 16,),
                                    Expanded(child: Skeleton()),
                                  ],
                                )

                              ],
                            ))
                      ],
                    );

                  },
                  future: _getImage(context, "TopPricingProduct/image2.png"),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Text(
            //   product.title,
            //   style: TextStyle(color: Colors.black),
            //   maxLines: 2,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "\Rs ${product.price}/KG",
            //       style: TextStyle(
            //         fontSize: getProportionateScreenWidth(18),
            //         fontWeight: FontWeight.w600,
            //         color: kPrimaryColor,
            //       ),
            //     ),
            //
            //   ],
            // )
          ],
        ),
      ),
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





class ProductCard3 extends StatelessWidget {
  const ProductCard3({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    //required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  //final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FutureBuilder(
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
                        //child: CircularProgressIndicator(),
                        // child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     const Skeleton(
                        //       height: 120,
                        //       width: 120,
                        //     ),
                        //     const SizedBox(width: 16,),
                        //     Expanded(
                        //         child: Column(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             const Skeleton(width:80),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             Row(
                        //               children: const[
                        //                 Expanded(child: Skeleton()),
                        //                 SizedBox(width: 16,),
                        //                 Expanded(child: Skeleton()),
                        //               ],
                        //             )
                        //
                        //           ],
                        //         ))
                        //   ],
                        // )
                      );
                    }

                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Skeleton(
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(width: 16,),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Skeleton(width:80),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                Row(
                                  children: const[
                                    Expanded(child: Skeleton()),
                                    SizedBox(width: 16,),
                                    Expanded(child: Skeleton()),
                                  ],
                                )

                              ],
                            ))
                      ],
                    );

                  },
                  future: _getImage(context, "TopPricingProduct/image3.png"),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Text(
            //   product.title,
            //   style: TextStyle(color: Colors.black),
            //   maxLines: 2,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "\Rs ${product.price}/KG",
            //       style: TextStyle(
            //         fontSize: getProportionateScreenWidth(18),
            //         fontWeight: FontWeight.w600,
            //         color: kPrimaryColor,
            //       ),
            //     ),
            //
            //   ],
            // )
          ],
        ),
      ),
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



class ProductCard4 extends StatelessWidget {
  const ProductCard4({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    //required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  //final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FutureBuilder(
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
                        //child: CircularProgressIndicator(),
                        // child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     const Skeleton(
                        //       height: 120,
                        //       width: 120,
                        //     ),
                        //     const SizedBox(width: 16,),
                        //     Expanded(
                        //         child: Column(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             const Skeleton(width:80),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             Row(
                        //               children: const[
                        //                 Expanded(child: Skeleton()),
                        //                 SizedBox(width: 16,),
                        //                 Expanded(child: Skeleton()),
                        //               ],
                        //             )
                        //
                        //           ],
                        //         ))
                        //   ],
                        // )
                      );
                    }

                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Skeleton(
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(width: 16,),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Skeleton(width:80),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                Row(
                                  children: const[
                                    Expanded(child: Skeleton()),
                                    SizedBox(width: 16,),
                                    Expanded(child: Skeleton()),
                                  ],
                                )

                              ],
                            ))
                      ],
                    );

                  },
                  future: _getImage(context, "TopPricingProduct/image4.png"),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Text(
            //   product.title,
            //   style: TextStyle(color: Colors.black),
            //   maxLines: 2,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "\Rs ${product.price}/KG",
            //       style: TextStyle(
            //         fontSize: getProportionateScreenWidth(18),
            //         fontWeight: FontWeight.w600,
            //         color: kPrimaryColor,
            //       ),
            //     ),
            //
            //   ],
            // )
          ],
        ),
      ),
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

class ProductCard5 extends StatelessWidget {
  const ProductCard5({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    //required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  //final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FutureBuilder(
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
                        //child: CircularProgressIndicator(),
                        // child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     const Skeleton(
                        //       height: 120,
                        //       width: 120,
                        //     ),
                        //     const SizedBox(width: 16,),
                        //     Expanded(
                        //         child: Column(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             const Skeleton(width:80),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             const Skeleton(),
                        //             const SizedBox(height: 8,),
                        //             Row(
                        //               children: const[
                        //                 Expanded(child: Skeleton()),
                        //                 SizedBox(width: 16,),
                        //                 Expanded(child: Skeleton()),
                        //               ],
                        //             )
                        //
                        //           ],
                        //         ))
                        //   ],
                        // )
                      );
                    }

                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Skeleton(
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(width: 16,),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Skeleton(width:80),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                const Skeleton(),
                                const SizedBox(height: 8,),
                                Row(
                                  children: const[
                                    Expanded(child: Skeleton()),
                                    SizedBox(width: 16,),
                                    Expanded(child: Skeleton()),
                                  ],
                                )

                              ],
                            ))
                      ],
                    );

                  },
                  future: _getImage(context, "TopPricingProduct/image5.png"),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Text(
            //   product.title,
            //   style: TextStyle(color: Colors.black),
            //   maxLines: 2,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "\Rs ${product.price}/KG",
            //       style: TextStyle(
            //         fontSize: getProportionateScreenWidth(18),
            //         fontWeight: FontWeight.w600,
            //         color: kPrimaryColor,
            //       ),
            //     ),
            //
            //   ],
            // )
          ],
        ),
      ),
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



