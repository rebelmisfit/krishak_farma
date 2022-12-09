// import 'package:krishakfarma/screens/loginsucessscreen/login_sucess_screen.dart';
// import 'package:krishakfarma/screens/sign_in/sign_in_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// class MainPage extends StatelessWidget {
//   static String routeName = "/mainpage";
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context,snapshot)
//         {
//           if(!snapshot.hasData)
//             {
//               return SignInScreen();// if snapshot has data return login sucess screen
//             }
//           // else
//           //   {
//           //     return ();
//           //   }
//           return LoginSuccessScreen();
//         },
//       )
//     );
//   }
// }
