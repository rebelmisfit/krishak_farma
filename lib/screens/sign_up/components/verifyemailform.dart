import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:krishak_farma/constants.dart';
import 'package:krishak_farma/screens/home/home_screen.dart';
import 'package:krishak_farma/screens/sign_up/sign_up_screen.dart';
import 'package:krishak_farma/size_config.dart';


class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();

}


class _VerifyEmailState extends State<VerifyEmail> {

  final auth = FirebaseAuth.instance;
  User ?user;
  Timer ?timer;

@override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 100), (){

        auth.currentUser?.delete();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignUpScreen()));
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Email Verification"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),

            Text(
              "Please Verify your Email to continue  ",
              style: headingStyle,
            ),
           SizedBox(height:getProportionateScreenHeight(30)),
            Text("Please click on button below to send verification link ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30),),
            ElevatedButton(
                onPressed: () async {
                  user=auth.currentUser;

                  user?.sendEmailVerification().then((value){
                    Fluttertoast.showToast(msg: "Email Sent successfully");
                  });
                },
                child: const Text("Vefiry Email "),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              "Please click below if you have verified mail using link ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30),),
            ElevatedButton(
                onPressed:() async {

                  user?.reload();
                  user = auth.currentUser;

                bool? val = user?.emailVerified;
                if(val!){
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }
                else
                  {
                    Fluttertoast.showToast(msg: "You haven't verified email please verify first");
                  }

                },
                child: Text("I have verified email "),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
              ),

              ),

            SizedBox(height: getProportionateScreenHeight(50),),

            Text(
              "The verification will be expired within ",
              style: TextStyle(
                fontSize: 18
              ),
            ),
            buildTimer(),

          ],
        ),
      ),
    );
  }

  Future<void> checkEmailverified() async {

  user=auth.currentUser;
  await user?.reload();
  bool? val = user?.emailVerified;

  if(val!){

    timer?.cancel();
   Navigator.pushReplacement(context,
     MaterialPageRoute(builder: (context) => HomeScreen()),
   );
  }
  }
  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
              const EdgeInsets.all(8.0),
              child: TweenAnimationBuilder(

                tween: Tween(begin: 100.0, end: 0.0),
                duration: Duration(seconds: 100),
                builder: (_, dynamic value, child) => Text(
                  "00:${value.toInt()}",
                  style: TextStyle(color: kPrimaryColor,
                         fontSize: 20,
                  ),

                ),
              ),
            ),
          ],
        ),
      ],
    );
  }




}
