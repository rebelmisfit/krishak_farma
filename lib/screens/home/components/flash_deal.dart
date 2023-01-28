//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';


import 'addproduct.dart';
import 'ecommerceimages.dart';
import 'icon_but_with_cnt.dart';

// class FlashDeal extends StatefulWidget {
//   const FlashDeal({Key? key}) : super(key: key);
//
//   @override
//   State<FlashDeal> createState() => _FlashDealState();
// }
//
// class _FlashDealState extends State<FlashDeal> {
//   @override
//   Widget build(BuildContext context) {
//     //List<String> tabs=["Farming Product"];// here you can able to add multiple product categories
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrangeAccent,
//         title: Text('Flash Deal'),
//
//       ),
//       body: FetchData(),
//     );
//   }
// }
// class _CategoryNews extends StatelessWidget {
//   const _CategoryNews({Key? key,required this.tabs}) : super(key: key);
//   final List<String> tabs;
//   @override
//   Widget build(BuildContext context) {
//    // final articles=Article.articles;
//     return Column(
//       children: [
//         TabBar(
//             isScrollable: true,
//             indicatorColor: Colors.black,
//             tabs: tabs.map((tab) => Tab(icon: Text(tab,style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),)).toList()
//           ),
//         SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: TabBarView(
//             children: tabs.map((tab) => ListView.builder(
//               //itemCount: articles.length,
//               itemBuilder: ((context,index){
//                     return Row(
//
//                       children: [
//                         IconBtnWithCounter(
//                             svgSrc: "assets/icons/User Icon.svg",
//                             press: () {
//                               //Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
//                               //Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
//                               //Navigator.pushNamed(context, AddProduct.routeName);
//                             }
//                         ),
//                         SizedBox(width: 30,),
//
//                         Expanded(
//
//                           child: Column(
//
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                              
//                               Text("Hello world"),
//                             ],
//                           ),
//                         ),
//                       ],
//                     );
//               }),
//
//             )
//             ).toList(),
//           ),
//         )
//
//       ],
//     );
//   }
// }
//
// class _DiscoverNews extends StatelessWidget {
//   const _DiscoverNews({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height*0.25,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Products',
//             style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black,fontWeight: FontWeight.w900),
//           ),
//           // const SizedBox(height: 5,),
//           // Text('Product from various farmers field',
//           //   style: Theme.of(context).textTheme.bodySmall,
//           //
//           // ),
//           const SizedBox(height: 20,),
//           TextFormField(
//             decoration: InputDecoration(
//                 hintText: 'Search',
//                 fillColor: Colors.grey.shade200,
//                 filled: true,
//                 prefixIcon: const Icon(Icons.search,
//                   color: Colors.grey,),
//                 suffixIcon: const RotatedBox(
//                   quarterTurns: 1,
//                   child: Icon(Icons.tune,
//                     color: Colors.grey,),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                   borderSide: BorderSide.none,
//                 )
//
//
//             ),
//           )
//
//         ],
//       ),
//     );
//   }
// }// search bar
//
//
//
//
//
//
// class FetchData extends StatefulWidget {
//   const FetchData({Key? key}) : super(key: key);
//
//   @override
//   State<FetchData> createState() => _FetchDataState();
// }
//
// class _FetchDataState extends State<FetchData> {
//   Query dbRef=FirebaseDatabase.instance.ref().child('products');
//   @override
//   Widget listItem({required Map product}) {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       padding: const EdgeInsets.all(10),
//       height: 110,
//       color: Colors.amberAccent,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             product['name'],
//             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//             product['Product'],
//             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//             product['Quantity'],
//             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//             product['Location'],
//             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//             product['Deal_Date'],
//             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//             product['Mobileno'],
//             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//
//
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: double.infinity,
//       child: FirebaseAnimatedList(
//         query: dbRef,
//         itemBuilder: (BuildContext context,DataSnapshot snapshot,Animation<double> animation,int index){
//           Map product=snapshot.value as Map;
//           product['key']=snapshot.key;
//
//           return listItem(product: product);
//         },
//       ),
//     );
//   }
//
//   }

String name="";
class FlashDeal extends StatefulWidget {
  //var product;

  FlashDeal({Key? key}) : super(key: key);



  @override
  State<FlashDeal> createState() => _FlashDealState();
}

class _FlashDealState extends State<FlashDeal> {









  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Card(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Serch for product'
            ),
            onChanged: (val){
              setState(() {
                name=val;
              });
            },
          ),
        )
         // title: Text("Flash Deal"),

    ),
      body: Container(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('products').snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){

            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context,index){
                    var data=snapshot.data!.docs[index].data() as Map<String,dynamic>;
                    if(name.isEmpty)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          //margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          // height: 200,
                          // color: Colors.amberAccent,
                          height: MediaQuery.of(context).size.height *1/3,
                          width: MediaQuery.of(context).size.height *1/3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),gradient: LinearGradient(colors: [Colors.orange,Colors.deepOrangeAccent],begin: Alignment.topLeft,end:Alignment.bottomRight)),


                          child: SingleChildScrollView(
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconBtnWithCounter(
                                    svgSrc: "assets/icons/User.svg",
                                    press: () {
                                      //Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
                                      //Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
                                      //Navigator.pushNamed(context, AddProduct.routeName);
                                    }
                                ),
                                Text(
                                  "Name :"+snapshot.data?.docs[index]['name'],
                                  style: TextStyle(color: Colors.white,fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Product :"+snapshot.data?.docs[index]['Product'],
                                  style: TextStyle(color: Colors.white,fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Quantity in KG :"+snapshot.data?.docs[index]['Quantity in KG'],
                                  style: TextStyle(color: Colors.white,fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Location :"+snapshot.data?.docs[index]['Location'],
                                  style: TextStyle(color: Colors.white,fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Contact no :"+snapshot.data?.docs[index]['Mobileno'],
                                  style: TextStyle(color: Colors.white,fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  //"Deal Date :"+(snapshot.data?.docs[index]['Deal_Date']),
                                  //timeago.format(document.data['tripDoc']['docCreatedOn'].toDate())
                                  "Deal Date : "+DateFormat('dd-MM-yyyy KK:mm:ss a').format(snapshot.data?.docs[index]['Deal_Date'].toDate()),
                                  style: TextStyle(color: Colors.white,fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    // GestureDetector(
                                    //   onTap: () {
                                    //
                                    //   },
                                    //   child: Row(
                                    //     children: [
                                    //       Icon(
                                    //         Icons.shopping_cart,
                                    //         color: Colors.red[700],
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    IconBtnWithCounter(
                                        svgSrc: "assets/icons/Cart Icon.svg",
                                        press: () {},
                                    ),
                                  ],
                                )





                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    if(data['Product'].toString().startsWith(name.toLowerCase()) || data['Product'].toString().startsWith(name.toUpperCase()))
                    {
                      return Card(
                        //color: Colors.deepOrangeAccent,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,

                        //borderOnForeground: true,
                        elevation: 4,
                        child: ListTile(
                          title: Text(
                            data['name'],
                            style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 18),

                          ),
                          subtitle: Text(
                            data['Product'],
                          ),
                          //trailing: Icon(Icons.arrow_forward_ios),
                          trailing: IconBtnWithCounter(
                              svgSrc: "assets/icons/arrow_right.svg",
                              press: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> ExtendedSearch()));
                              }
                          ),
                          leading: IconBtnWithCounter(
                              svgSrc: "assets/icons/User.svg",
                              press: () {

                              }
                          ),
                          //iconColor: Colors.deepOrangeAccent,
                          textColor: Colors.deepOrangeAccent,
                          //tileColor: Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                        ),
                      );

                    }



                    // return Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: Container(
                    //     //margin: const EdgeInsets.all(10),
                    //     padding: const EdgeInsets.all(10),
                    //     // height: 200,
                    //     // color: Colors.amberAccent,
                    //     height: MediaQuery.of(context).size.height *1/3,
                    //     width: MediaQuery.of(context).size.height *1/3,
                    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),gradient: LinearGradient(colors: [Colors.orange,Colors.deepOrangeAccent],begin: Alignment.topLeft,end:Alignment.bottomRight)),
                    //
                    //
                    //     child: SingleChildScrollView(
                    //       child: Column(
                    //         //mainAxisAlignment: MainAxisAlignment.center,
                    //
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           IconBtnWithCounter(
                    //               svgSrc: "assets/icons/User.svg",
                    //               press: () {
                    //                 //Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
                    //                 //Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
                    //                 //Navigator.pushNamed(context, AddProduct.routeName);
                    //               }
                    //           ),
                    //           Text(
                    //             // "Name :"+snapshot.data?.docs[index]['name'],
                    //             data['name'],
                    //             style: TextStyle(color: Colors.white,fontSize: 20),
                    //           ),
                    //           const SizedBox(
                    //             height: 5,
                    //           ),
                    //           Text(
                    //             "Product :"+snapshot.data?.docs[index]['Product'],
                    //             style: TextStyle(color: Colors.white,fontSize: 20),
                    //           ),
                    //           const SizedBox(
                    //             height: 5,
                    //           ),
                    //           Text(
                    //             "Quantity in KG :"+snapshot.data?.docs[index]['Quantity in KG'],
                    //             style: TextStyle(color: Colors.white,fontSize: 20),
                    //           ),
                    //           const SizedBox(
                    //             height: 5,
                    //           ),
                    //           Text(
                    //             "Location :"+snapshot.data?.docs[index]['Location'],
                    //             style: TextStyle(color: Colors.white,fontSize: 20),
                    //           ),
                    //           const SizedBox(
                    //             height: 5,
                    //           ),
                    //           Text(
                    //             "Contact no :"+snapshot.data?.docs[index]['Mobileno'],
                    //             style: TextStyle(color: Colors.white,fontSize: 20),
                    //           ),
                    //           const SizedBox(
                    //             height: 5,
                    //           ),
                    //           Text(
                    //             //"Deal Date :"+(snapshot.data?.docs[index]['Deal_Date']),
                    //             //timeago.format(document.data['tripDoc']['docCreatedOn'].toDate())
                    //             "Deal Date : "+DateFormat('dd-MM-yyyy KK:mm:ss a').format(snapshot.data?.docs[index]['Deal_Date'].toDate()),
                    //             style: TextStyle(color: Colors.white,fontSize: 20),
                    //           ),
                    //           const SizedBox(
                    //             height: 5,
                    //           ),
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.end,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //
                    //               // GestureDetector(
                    //               //   onTap: () {
                    //               //
                    //               //   },
                    //               //   child: Row(
                    //               //     children: [
                    //               //       Icon(
                    //               //         Icons.shopping_cart,
                    //               //         color: Colors.red[700],
                    //               //       ),
                    //               //     ],
                    //               //   ),
                    //               // ),
                    //               IconBtnWithCounter(
                    //                   svgSrc: "assets/icons/Cart Icon.svg",
                    //                   press: () {
                    //                     //Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
                    //                     //Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
                    //                     //Navigator.pushNamed(context, AddProduct.routeName);
                    //                   }
                    //               ),
                    //             ],
                    //           )
                    //
                    //
                    //
                    //
                    //
                    //         ],
                    //       ),
                    //     ),
                    //     //if(data['name'].toString().startsWith(name.toLowerCase())){}
                    //   ),
                    // );
                    return Container();
                  }
              );

            }
          else
            {
              return Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.width/1.2,
                  //child: CircularProgressIndicator(),
                  child: Row(
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
                  )
              );
            }
          },
        ),
      ),
      

    );
  }
}


class ExtendedSearch extends StatefulWidget {
  const ExtendedSearch({Key? key}) : super(key: key);

  @override
  State<ExtendedSearch> createState() => _ExtendedSearchState();
}

class _ExtendedSearchState extends State<ExtendedSearch> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
         backgroundColor: Colors.deepOrangeAccent,

       title: Text("Flash Deal"),
       actions: [
         // IconBtnWithCounter(
         //     svgSrc: "assets/icons/arrow_right.svg",
         //     press: () {
         //      // Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> FlashDeal()));
         //     }
         // ),
       ],

     ),
     body: Container(
       child: StreamBuilder(
         stream: FirebaseFirestore.instance.collection('products').snapshots(),
         builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){

           if(snapshot.hasData){
             return ListView.builder(
                 itemCount: snapshot.data!.docs.length,
                 itemBuilder: (context,index){
                   var data=snapshot.data!.docs[index].data() as Map<String,dynamic>;
                   if(data['Product'].toString().startsWith(name.toLowerCase()) || data['Product'].toString().startsWith(name.toUpperCase()))
                     {
                       return Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(
//margin: const EdgeInsets.all(10),
                           padding: const EdgeInsets.all(10),
// height: 200,
// color: Colors.amberAccent,
                           height: MediaQuery.of(context).size.height *1/3,
                           width: MediaQuery.of(context).size.height *1/3,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),gradient: LinearGradient(colors: [Colors.orange,Colors.deepOrangeAccent],begin: Alignment.topLeft,end:Alignment.bottomRight)),


                           child: SingleChildScrollView(
                             child: Column(
//mainAxisAlignment: MainAxisAlignment.center,

                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 IconBtnWithCounter(
                                     svgSrc: "assets/icons/User.svg",
                                     press: () {
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
//Navigator.pushNamed(context, AddProduct.routeName);
                                     }
                                 ),
                                 Text(
                                   "Name :"+data['name'],
                                   style: TextStyle(color: Colors.white,fontSize: 20),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Text(
                                   "Product :"+data['Product'],
                                   style: TextStyle(color: Colors.white,fontSize: 20),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Text(
                                   "Quantity in KG :"+data['Quantity in KG'],
                                   style: TextStyle(color: Colors.white,fontSize: 20),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Text(
                                   "Location :"+data['Location'],
                                   style: TextStyle(color: Colors.white,fontSize: 20),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Text(
                                   "Contact no :"+data['Mobileno'],
                                   style: TextStyle(color: Colors.white,fontSize: 20),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Text(
//"Deal Date :"+(snapshot.data?.docs[index]['Deal_Date']),
//timeago.format(document.data['tripDoc']['docCreatedOn'].toDate())
                                   "Deal Date : "+DateFormat('dd-MM-yyyy KK:mm:ss a').format(data['Deal_Date'].toDate()),
                                   style: TextStyle(color: Colors.white,fontSize: 20),
                                 ),
                                 const SizedBox(
                                   height: 5,
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [

// GestureDetector(
//   onTap: () {
//
//   },
//   child: Row(
//     children: [
//       Icon(
//         Icons.shopping_cart,
//         color: Colors.red[700],
//       ),
//     ],
//   ),
// ),
                                     IconBtnWithCounter(
                                         svgSrc: "assets/icons/Cart Icon.svg",
                                         press: () {
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CartScreen()));
//Navigator.push(context, MaterialPageRoute(builder:(context)=> CustomAppBar(rating: 100.0)));
//Navigator.pushNamed(context, AddProduct.routeName);
                                         }
                                     ),
                                   ],
                                 )





                               ],
                             ),
                           ),
                         ),
                       );
                     }







                   return Container();
                 }
             );

           }
           else
           {
             return Container(
                 width: MediaQuery.of(context).size.width/1.2,
                 height: MediaQuery.of(context).size.width/1.2,
                 //child: CircularProgressIndicator(),
                 child: Row(
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
                 )
             );
           }
         },
       ),
     ),
   );
  }
}
