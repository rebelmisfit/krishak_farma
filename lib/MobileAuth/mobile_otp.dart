// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// // import 'package:pinput/pinput.dart';
// //
// // import '../screens/loginsucessscreen/login_sucess_screen.dart';
// // import 'mobile_login.dart';
// //
// //
// //
// // class MobileOTP extends StatefulWidget {
// //   const MobileOTP({Key? key}) : super(key: key);
// //
// //   @override
// //   State<MobileOTP> createState() => _MobileOTPState();
// // }
// //
// // class _MobileOTPState extends State<MobileOTP> {
// //
// //   final FirebaseAuth auth =FirebaseAuth.instance;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     // TODO: implement build
// //     final defaultPinTheme = PinTheme(
// //       width: 56,
// //       height: 56,
// //       textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
// //       decoration: BoxDecoration(
// //         border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
// //         borderRadius: BorderRadius.circular(20),
// //       ),
// //     );
// //
// //     final focusedPinTheme = defaultPinTheme.copyDecorationWith(
// //       border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
// //       borderRadius: BorderRadius.circular(8),
// //     );
// //
// //     final submittedPinTheme = defaultPinTheme.copyWith(
// //       decoration: defaultPinTheme.decoration?.copyWith(
// //         color: Color.fromRGBO(234, 239, 243, 1),
// //       ),
// //     );
// //
// //
// //
// //     var code="";
// //     return Scaffold(
// //         backgroundColor: Colors.white,
// //         appBar: AppBar(
// //           title: const Text("Phone Verification"),
// //           backgroundColor: Colors.deepOrangeAccent,
// //         ),
// //         body:
// //         Container(
// //             margin: EdgeInsets.only(left: 25, right: 25),
// //             alignment: Alignment.center,
// //             child:
// //             SingleChildScrollView(
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   SizedBox(height: 10,),
// //                   Text("Phone Verification", style: TextStyle(
// //                     fontSize: 22,fontWeight: FontWeight.bold,
// //                   ),
// //                   ),
// //                   SizedBox(height: 10,),
// //                   Text("Please Enter the OTP",
// //                     style: TextStyle(
// //                       fontSize: 16,
// //                     ),
// //                     textAlign: TextAlign.center,
// //                   ),
// //
// //               SizedBox(height: 40,),
// //
// //               Pinput(
// //                 length: 6,
// //
// //
// //                 pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
// //                 showCursor: true,
// //                 onChanged: (value){
// //                   code=value;
// //                 },
// //               ),
// //
// //                   SizedBox(height: 40,),
// //                   SizedBox(
// //                     height: 45,
// //                     width: double.infinity,
// //                     child: ElevatedButton(onPressed: ()async{
// //                       try{
// //                         PhoneAuthCredential credential=PhoneAuthProvider.credential(verificationId: MobileLogin.verify, smsCode: code);
// //                         await auth.signInWithCredential(credential);
// //                         //Navigator.pushNamed(context, LoginSuccessScreen.routeName);
// //                         Navigator.pushNamedAndRemoveUntil(context,"login_sucess", (route) => false);
// //                       }
// //                       catch(e){
// //                       Fluttertoast.showToast(msg: "Wrong OTP");
// //                       }
// //
// //                     },
// //                       child: Text("Continue"),
// //                       style: ElevatedButton.styleFrom(
// //                           primary: Colors.deepOrangeAccent,
// //                           shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(10)
// //                           )
// //                       ),
// //
// //
// //                     ),
// //                   ),
// //                   TextButton(onPressed: (){
// //                     //Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileLogin()));
// //                     Navigator.pushNamedAndRemoveUntil(context,"mobile_login", (route) => false);
// //                   },
// //                       child: Text("Resend OTP ",
// //                         style: TextStyle(color: Colors.deepOrangeAccent),
// //                       ),
// //
// //                   )
// //                 ],
// //               ),
// //             )
// //         )
// //     );
// //
// //   }
// // }
// //
// import 'package:flutter/material.dart';
//
//
//
// class MobileOTP extends StatefulWidget {
//   const MobileOTP({Key? key}) : super(key: key);
//
//   @overridea
//   State<MobileOTP> createState() => _MobileOTPState();
// }
//
// class _MobileOTPState extends State<MobileOTP> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     // TODO: implement build
//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 56,
//       textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
//       decoration: BoxDecoration(
//         border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
//         borderRadius: BorderRadius.circular(20),
//       ),
//     );
//
//     final focusedPinTheme = defaultPinTheme.copyDecorationWith(
//       border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
//       borderRadius: BorderRadius.circular(8),
//     );
//
//     final submittedPinTheme = defaultPinTheme.copyWith(
//       decoration: defaultPinTheme.decoration?.copyWith(
//         color: Color.fromRGBO(234, 239, 243, 1),
//       ),
//     );
//
//
//
//
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: const Text("Phone Verification"),
//           backgroundColor: Colors.deepOrangeAccent,
//         ),
//         body:
//         Container(
//             margin: EdgeInsets.only(left: 25, right: 25),
//             alignment: Alignment.center,
//             child:
//             SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 10,),
//                   Text("Phone Verification", style: TextStyle(
//                     fontSize: 22,fontWeight: FontWeight.bold,
//                   ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Please Enter the OTP",
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//
//                   SizedBox(height: 40,),
//
//                   Pinput(
//                     length: 6,
//
//
//                     pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
//                     showCursor: true,
//                   ),
//
//                   SizedBox(height: 40,),
//                   SizedBox(
//                     height: 45,
//                     width: double.infinity,
//                     child: ElevatedButton(onPressed: (){
//
//                     },
//                       child: Text("Continue"),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.deepOrangeAccent,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//
//
//                     ),
//                   ),
//                   TextButton(onPressed: (){},
//                     child: Text("Resend OTP ",
//                       style: TextStyle(color: Colors.deepOrangeAccent),
//                     ),
//
//                   )
//                 ],
//               ),
//             )
//         )
//     );
//
//   }
// }