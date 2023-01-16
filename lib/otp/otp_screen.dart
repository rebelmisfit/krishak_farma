import 'package:flutter/material.dart';


import '../size_config.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  String email;
  OtpScreen(this.email);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Body(email),
    );
  }
}
