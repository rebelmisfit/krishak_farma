import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: SizedBox(),
        //title: Text("Login Success",),
        title: Text("     Welcome",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400),),
      ),

      body: Body()
    );
  }
}
// import 'package:flutter/material.dart';
//
// import 'components/body.dart';
//
// class LoginSuccessScreen extends StatelessWidget {
//   static String routeName = "/login_success";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: SizedBox(),
//         title: Text("Login Success"),
//       ),
//       body: Body(),
//     );
//   }
// }
