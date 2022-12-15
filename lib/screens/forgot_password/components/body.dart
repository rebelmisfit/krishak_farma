import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in//sign_in_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  final _auth=FirebaseAuth.instance;
  List<String> errors = [];
  String? email;
  final emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue){
              email=newValue;
              emailController.text=newValue!;
            },
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          ElevatedButton(
              onPressed: (){
                AddForgetpassword(emailController.text);
                Fluttertoast.showToast(msg: "Sending request ");
              },
              child: const Text("Reset password"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
   void AddForgetpassword(String memail) async
   {
      if(_formKey.currentState!.validate()) {
        try {
          await _auth.sendPasswordResetEmail(email: memail);
          Fluttertoast.showToast(
              msg: "Password reset email sent successfully !");
          Navigator.pushAndRemoveUntil((context),
              MaterialPageRoute(builder: (context) => SignInScreen()), (
                  route) => false);
        } on FirebaseAuthException catch (e) {
          if (e.code.toString() == 'invalid-email') {
            // setState(() {message 'Invalid email address.';});
            Fluttertoast.showToast(msg: "Invalid email");
          }
          else if (e.code.toString() == 'missing-email') {
            //...
            Fluttertoast.showToast(msg: "Missing email");
          }
          else if (e.code.toString() == 'user-not-found') {
            //...
            Fluttertoast.showToast(msg: "User not found");
          }
          else
            {
              Fluttertoast.showToast(msg: e.code.toString());
            }

        }
      }
     else
       {
         Fluttertoast.showToast(msg: "Something went wrong");
       }


   }

     @override
     void dispose()
     {
        emailController.dispose();
        super.dispose();
     }

}


