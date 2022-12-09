// import 'package:krishakfarma/screens/loginsucessscreen/login_sucess_screen.dart';
// import 'package:krishakfarma/screens/sign_up/sign_up_screen.dart';
// import 'package:krishakfarma/size_config.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:krishakfarma/main.dart';
// import 'package:flutter/material.dart';
// class SignIn extends StatefulWidget {
//   static String routeName = "/sign_in";
//   const SignIn({Key? key}) : super(key: key);
//
//   @override
//   State<SignIn> createState() => _SignInState();
// }
//
// class _SignInState extends State<SignIn> {
//   bool hide=true;
//
//   // text controllers
//   final _emailController=TextEditingController();
//   final _passwordController=TextEditingController();
//
//   Future SignIn() async
//   {
//     await FirebaseAuth.instance.signInWithEmailAndPassword
//       (
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//     );
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     //SizeConfig().init(context);
//     return Scaffold(
//       backgroundColor: Colors.deepOrangeAccent,
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Padding(padding: const EdgeInsets.only(top: 200,left: 50),
//                 child: Text("Welcome\nBack",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w300),)),
//
//             Container(
//
//               padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
//               width: double.infinity,
//               height: getProportionateScreenHeight(480),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Sign In ",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400),),
//                   SizedBox(height: 15,),
//                   TextField(
//                     // Email controller
//                     //whn user type something we use controller what exactiy user type inside the text field
//                     controller: _emailController,
//
//                     decoration: InputDecoration(
//                         hintText: "E-mail",
//                         suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.email),)
//                     ),
//                   ),
//                   SizedBox(height: 15,),
//                   TextField(
//                     // Password controller
//
//                     controller: _passwordController,
//                     obscureText: hide,
//                     decoration: InputDecoration(
//                         hintText: "Password",
//                         suffixIcon: IconButton(onPressed: (){
//                           setState(() {
//                             hide=!hide;
//                           });
//                         },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),)
//
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(onPressed: (){},child: Text("Forget Password?"),),
//                   ),
//                   Center(
//                     child: ElevatedButton(
//                         style: TextButton.styleFrom(
//                             backgroundColor: Colors.deepOrangeAccent,
//                             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60)
//                         ),
//                         onPressed: (){
//                           /////////
//                           //Navigator.push(context, MaterialPageRoute(builder:(context)=
//                           SignIn();
//                         }, child:Text("Sign In")),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Don't have an account"),
//                       TextButton(onPressed: (){
//                         //Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
//                       }, child: Text("Sign Up?"))
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//



import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //title: Text("Sign In"),
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
