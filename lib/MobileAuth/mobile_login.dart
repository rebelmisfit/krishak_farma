// // import 'package:flutter/material.dart';
// // import 'package:krishak_farma/MobileAuth/mobile_otp.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/services.dart';
// // import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// // import 'package:krishak_farma/components/no_account_text.dart';
// // import 'package:krishak_farma/screens/sign_in/sign_in_screen.dart';
// //
// // class MobileLogin extends StatefulWidget {
// //   static String verify="";
// //
// //   const MobileLogin({Key? key}) : super(key: key);
// //
// //   @override
// //   State<MobileLogin> createState() => _MobileLoginState();
// // }
// // final storage=new FlutterSecureStorage();
// // class _MobileLoginState extends State<MobileLogin> {
// //
// //   TextEditingController countrycode = TextEditingController();
// //   TextEditingController mobileNo = TextEditingController();
// //   //static String verify="";
// //
// //   @override
// //   void initState() {
// //     countrycode.text = "+91";
// //     super.initState();
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     var PhoneNo="";
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //      appBar: AppBar(
// //        centerTitle: true,
// //        title: Text("Sign In",),
// //        backgroundColor: Colors.deepOrangeAccent,
// //      ),
// //      body:
// //         Container(
// //           margin: EdgeInsets.only(left: 25, right: 25),
// //           alignment: Alignment.center,
// //           child:
// //             SingleChildScrollView(
// //              child: Column(
// //                mainAxisAlignment: MainAxisAlignment.center,
// //                children: [
// //                Image.asset("assets/images/loading_screen.gif", height: 300, width: 300,alignment: Alignment.topCenter,),
// //                SizedBox(height: 10,),
// //                Text("aPhone Verification", style: TextStyle(
// //                  fontSize: 22,fontWeight: FontWeight.bold,
// //                ),
// //                ),
// //                SizedBox(height: 10,),
// //                Text("You need to register before getting started",
// //                  style: TextStyle(
// //                    fontSize: 16,
// //                  ),
// //                  textAlign: TextAlign.center,
// //                ),
// //               SizedBox(height: 20,),
// //
// //               Container(
// //                 height: 55,
// //                 decoration: BoxDecoration(
// //                   border: Border.all(width: 1, color: Colors.deepOrangeAccent),
// //                   borderRadius: BorderRadius.circular(10)
// //                 ),
// //                 child: Row(
// //                   children: [
// //                     SizedBox(width: 10,),
// //                     SizedBox(
// //                       width: 40,
// //                       child: TextField(
// //                        controller: countrycode,
// //                       keyboardType: TextInputType.number,
// //                       decoration: InputDecoration(border: InputBorder.none, hintText: "+91"),
// //                       ),
// //                     ),
// //
// //                     Text(
// //                       "|",
// //                       style: TextStyle(
// //                         fontSize: 40, color: Colors.deepOrangeAccent
// //                       ),
// //                     ),
// //
// //                     Expanded(
// //                         child:
// //                         TextField(
// //                           controller: mobileNo,
// //                           inputFormatters: [
// //                             LengthLimitingTextInputFormatter(10)
// //                           ],
// //                           onChanged: (value){
// //                                   PhoneNo=value;
// //                           },
// //                           decoration: InputDecoration(border: InputBorder.none,
// //                             hintText: "Mobile Number",
// //                           ),
// //                           keyboardType: TextInputType.number,
// //
// //                         )
// //                     )
// //                   ],
// //                 ),
// //               ),
// //              SizedBox(height: 40,),
// //               SizedBox(
// //                 height: 45,
// //                 width: double.infinity,
// //                 child: ElevatedButton(onPressed: () async {
// //
// //
// //                   await FirebaseAuth.instance.verifyPhoneNumber(
// //                     phoneNumber: '${countrycode.text+PhoneNo}',
// //                     verificationCompleted: (PhoneAuthCredential credential) {},
// //                     verificationFailed: (FirebaseAuthException e) {},
// //                     codeSent: (String verificationId, int? resendToken) {
// //                               MobileLogin.verify=verificationId;
// //                       //Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileOTP()));
// //                       //Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
// //
// //                     },
// //
// //                     codeAutoRetrievalTimeout: (String verificationId) {},
// //                   );
// //
// //
// //
// //                   //Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
// //                 },
// //                     child: Text("Send the OTP "),
// //                   style: ElevatedButton.styleFrom(
// //                     primary: Colors.deepOrangeAccent,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(10)
// //                     )
// //                   ),
// //
// //
// //                 ),
// //               ),
// //              SizedBox(height: 20,),
// //              NoAccountText(),
// //                ],
// //              ),
// //             )
// //         )
// //     );
// //   }
// //   // Future<void> storeTokenAndData(UserCredential userCredential) async
// //   // {
// //   //   await storage.write(key: "token", value: userCredential.credential?.token.toString());
// //   //   await storage.write(key: "userCredential", value: userCredential.credential?.toString());
// //   //   await storage.write(key: "userCredential", value: userCredential.toString());
// //   // }
// // }
// import 'package:flutter/material.dart';
// import 'package:krishak_farma/MobileAuth/mobile_otp.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/services.dart';
//
// class MobileLogin extends StatefulWidget {
//   const MobileLogin({Key? key}) : super(key: key);
//
//   @override
//   State<MobileLogin> createState() => _MobileLoginState();
// }
//
// class _MobileLoginState extends State<MobileLogin> {
//
//   TextEditingController countrycode = TextEditingController();
//   TextEditingController mobileNo = TextEditingController();
//
//
//   @override
//   void initState() {
//     countrycode.text = "+91";
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     var PhoneNo;
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
//                   Image.asset("assets/images/loading_screen.gif", height: 300, width: 300,alignment: Alignment.topCenter,),
//                   SizedBox(height: 10,),
//                   Text("Phone Verification", style: TextStyle(
//                     fontSize: 22,fontWeight: FontWeight.bold,
//                   ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("You need to register before getting started",
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 20,),
//
//                   Container(
//                     height: 55,
//                     decoration: BoxDecoration(
//                         border: Border.all(width: 1, color: Colors.deepOrangeAccent),
//                         borderRadius: BorderRadius.circular(10)
//                     ),
//                     child: Row(
//                       children: [
//                         SizedBox(width: 10,),
//                         SizedBox(
//                           width: 40,
//                           child: TextField(
//                             controller: countrycode,
//                             keyboardType: TextInputType.number,
//                             decoration: InputDecoration(border: InputBorder.none, hintText: "+91"),
//                           ),
//                         ),
//
//                         Text(
//                           "|",
//                           style: TextStyle(
//                               fontSize: 40, color: Colors.deepOrangeAccent
//                           ),
//                         ),
//
//                         Expanded(
//                             child:
//                             TextField(
//                               controller: mobileNo,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(10)
//                               ],
//                               onChanged: (value){
//
//                               },
//                               decoration: InputDecoration(border: InputBorder.none,
//                                 hintText: "Mobile Number",
//                               ),
//                               keyboardType: TextInputType.number,
//
//                             )
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 40,),
//                   SizedBox(
//                     height: 45,
//                     width: double.infinity,
//                     child: ElevatedButton(onPressed: () async {
//
//                       await FirebaseAuth.instance.verifyPhoneNumber(
//                         phoneNumber: '+44 7123 123 456',
//                         verificationCompleted: (PhoneAuthCredential credential) {},
//                         verificationFailed: (FirebaseAuthException e) {},
//                         codeSent: (String verificationId, int? resendToken) {},
//                         codeAutoRetrievalTimeout: (String verificationId) {},
//                       );
//
//
//
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context)=>MobileOTP())
//                       );
//                     },
//                       child: Text("Send the OTP "),
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.deepOrangeAccent,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//
//
//                     ),
//                   )
//                 ],
//               ),
//             )
//         )
//     );
//   }
// }