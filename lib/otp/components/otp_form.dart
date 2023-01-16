import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_auth/email_auth.dart';
import 'package:krishak_farma/screens/home/home_screen.dart';
import 'package:krishak_farma/screens/sign_up/sign_up_screen.dart';
import '../../components/default_button.dart';
import '../../constants.dart';
import '../../size_config.dart';

class OtpForm extends StatefulWidget {
  String ?Email;


   OtpForm({
    Key? key, @required this.Email
  }
  ) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState(Email);
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  String ?Email;
  String ?UserOTP="";

  _OtpFormState(this.Email);

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

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
    }
    else
    {
      Fluttertoast.showToast(msg: "Email verification failed ");
      Navigator.pushNamed(context, SignUpScreen.routeName);
    }

  }

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  onSaved: (value ){
                    UserOTP=UserOTP!+value!;

                  },
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin3FocusNode),
                  onSaved: (value){
                    UserOTP=UserOTP!+value!;
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onSaved: (value){
                    UserOTP=UserOTP!+value!;
                  },
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onSaved: (value){
                    UserOTP=UserOTP!+value!;
                  },
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode!.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),

          DefaultButton(
            text: "Send OTP",
            press: () async {


            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: "Continue",
            press: () {
             checkOtp(UserOTP!, Email!, context);
            },

          ),

        ],
      ),
    );
  }
}
