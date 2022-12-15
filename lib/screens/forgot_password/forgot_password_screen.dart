import 'package:flutter/material.dart';
import 'package:krishak_farma/screens/forgot_password/components/forgot_password_form.dart';

import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Forgot Password"),
      ),
      body: ResetPasswordScreen(),
    );
  }
}
