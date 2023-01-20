import 'package:flutter/cupertino.dart';
import 'package:email_auth/email_auth.dart';
import 'package:krishak_farma/components/default_button.dart';
import 'package:krishak_farma/screens/home/home_screen.dart';
import 'package:krishak_farma/screens/sign_up/sign_up_screen.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'otp_form.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Body extends StatelessWidget {
  String Email = "";

  Body(this.Email);

  EmailAuth eauth = new EmailAuth(sessionName: "Email Verification");
  void sendOTP(String Email) async
  {
    bool res =  await eauth.sendOtp(
        recipientMail: Email,
        otpLength: 4
    );

    if(res)
    {
      Fluttertoast.showToast(msg: "Email Sent successfully ");
    }
    else
    {
      Fluttertoast.showToast(msg: "Something went wrong ");
    }
  }

  void checkOtp(String OTP, String email, BuildContext context)
  {
    bool res = eauth.validateOtp(recipientMail: email, userOtp:OTP);

    if(res)
    {
        Fluttertoast.showToast(msg: "Verified Successfully ");
        Navigator.pushNamed(context, HomeScreen.routeName);
    }
    else
    {
        Fluttertoast.showToast(msg: "Email verification failed ");
        Navigator.pushNamed(context, SignUpScreen.routeName);
    }

  }


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent your code on your Mail please check your Mailbox "),
              buildTimer(),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),

              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 100.0, end: 0.0),
          duration: Duration(seconds: 100),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
