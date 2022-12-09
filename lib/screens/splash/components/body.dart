//
// import 'package:krishakfarma/main.dart';
// import 'package:krishakfarma/size_config.dart';
// import 'package:flutter/material.dart';
// class  Body extends StatefulWidget {
//   //
//   //static String routeName="/splash";
//   const Body({Key? key}) : super(key: key);
//   //static String routeName="/splash";
//   //static String routeName="/splash";
//   _BodyState createState() => _BodyState();
// }
// class _BodyState extends State<Body> {
//   void initState()
//   {
//     super.initState();
//     _navigatetohome();
//   }
//   _navigatetohome()async
//   {
//     await Future.delayed(Duration(milliseconds: 3000),(){});// await for 1.5 seconds
//     //avigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> MyLogin1())); // and then navigate to home screen
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                   height: getProportionateScreenHeight(150.0),
//                   width: getProportionateScreenHeight(150.0),
//
//                   child: CircleAvatar(
//                     radius: getProportionateScreenHeight(50.0),
//                     backgroundImage: AssetImage('images/Agri safe logo.png'),
//
//
//                   )
//               ),
//               Container(
//
//
//                 child: Text('Agri Safe',
//                   style: TextStyle(
//                     fontFamily: 'SourceSans3',
//                     fontSize: getProportionateScreenWidth(30.0),
//                     color: Colors.orangeAccent,
//                     //fontWeight: FontWeight.bold,
//                   ),
//
//                 ),
//               ),
//               Container(
//                   height: getProportionateScreenHeight(400.0),
//                   width:getProportionateScreenWidth(400.0),
//                   //color: Colors.orangeAccent,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                           'images/Splash screen image 1.jpg'),
//                       fit: BoxFit.fill,
//                       //fit: BoxFit.fitHeight,
//                     ),
//                   )
//               )
//             ],
//           )
//       ),
//     );
//   }
// }
//
//
//


import 'package:flutter/material.dart';


// This is the best practice
// import '../../../constants.dart';
// import '../../../size_config.dart';
// import '../../sign_in/sign_in_screen.dart';
// import '../components/splash_content.dart';
// import '../../../components/default_button.dart';

// class Body extends StatefulWidget {
//   @override
//   _BodyState createState() => _BodyState();
// }
//
// class _BodyState extends State<Body> {
//   int currentPage = 0;
//   List<Map<String, String>> splashData = [
//     // {
//     //   "text": "Welcome toKrishakFarma",
//     //   "image": "assets/images/splash_1.png"
//     // },
//     {
//       "text":
//       "Welcome toKrishakFarma We help to connect farmers \nwith stores virtually to get best market prices",
//       "image": "assets/images/splash_2.png"
//     },
//     // {
//     //   "text": "We show the easy way to shop. \nJust stay at home with us",
//     //   "image": "assets/images/splash_3.png"
//     // },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//
//       child: SizedBox(
//         width: double.infinity,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 3,
//               child: PageView.builder(
//                 onPageChanged: (value) {
//                   setState(() {
//                     currentPage = value;
//                   });
//                 },
//                 itemCount: splashData.length,
//                 itemBuilder: (context, index) => SplashContent(
//                   image: splashData[index]["image"],
//                   text: splashData[index]['text'],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(20)),
//                 child: Column(
//                   children: <Widget>[
//                     Spacer(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: List.generate(
//                         splashData.length,
//                             (index) => buildDot(index: index),
//                       ),
//                     ),
//                     Spacer(flex: 3),
//                     DefaultButton(
//                       text: "Continue",
//                       press: () {
//                         Navigator.pushNamed(context, SignInScreen.routeName); // insert after work is done SignInScreen.routeName
//                       },
//                     ),
//                     Spacer(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   AnimatedContainer buildDot({int? index}) {
//     return AnimatedContainer(
//       duration: kAnimationDuration,
//       margin: EdgeInsets.only(right: 5),
//       height: 6,
//       width: currentPage == index ? 20 : 6,
//       decoration: BoxDecoration(
//         color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
//         borderRadius: BorderRadius.circular(3),
//       ),
//     );
//   }
// }

////////