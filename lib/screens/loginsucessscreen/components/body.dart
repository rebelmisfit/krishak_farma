
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(


      child: Column(


        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          SingleChildScrollView(
            child: Image.asset(
              "assets/images/login_success.png",
              height: SizeConfig.screenHeight * 0.4, //40%
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login In Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          Spacer(),
          // SizedBox(
          //   width: SizeConfig.screenWidth * 0.6,
          //   child: DefaultButton(
          //     text: "Log Out ",
          //     press: () {
          //      // Navigator.pushNamed(context, HomeScreen.routeName);
          //       FirebaseAuth.instance.signOut();
          //     },
          //   ),
          // ),
          // Spacer(),
        ],
      ),
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../../components/default_button.dart';
// import '../../../size_config.dart';
// import '../../home/home_screen.dart';
//
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: SizeConfig.screenHeight * 0.04),
//         Image.asset(
//           "assets/images/success.png",
//           height: SizeConfig.screenHeight * 0.4, //40%
//         ),
//         SizedBox(height: SizeConfig.screenHeight * 0.08),
//         Text(
//           "Login Success",
//           style: TextStyle(
//             fontSize: getProportionateScreenWidth(30),
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         Spacer(),
//         SizedBox(
//           width: SizeConfig.screenWidth * 0.6,
//           child: DefaultButton(
//             text: "Back to home",
//             press: () {
//               Navigator.pushNamed(context, HomeScreen.routeName);
//             },
//           ),
//         ),
//         Spacer(),
//       ],
//     );
//   }
// }
