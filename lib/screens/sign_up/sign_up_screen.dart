// import 'package:krishakfarma/screens/sign_in/sign_in_screen.dart';
// import 'package:krishakfarma/size_config.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:krishakfarma/main.dart';
// import 'package:flutter/material.dart';
// class SignUp extends StatefulWidget {
//   static String routeName="/signup";
//   ///////
//   //final voidCallback show
//   const SignUp({Key? key}) : super(key: key);
//
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   bool hide=true;
//   final _emailController=TextEditingController();
//   final _passwordController=TextEditingController();
//   TextEditingController password=TextEditingController();
//   TextEditingController conformpassword=TextEditingController();
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//   Future SignUp() async{
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrangeAccent,
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Padding(padding: const EdgeInsets.only(top: 200,left: 50),
//                 child: Text("Create Your \n Account",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w300),)),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),vertical: getProportionateScreenHeight(10)),
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
//                   Text("Sign Up ",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400),),
//                   SizedBox(height:getProportionateScreenHeight(15),),
//                   TextField(
//                     decoration: InputDecoration(
//                         hintText: "E-mail",
//                         suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.email),)
//                     ),
//                   ),
//                   SizedBox(height: getProportionateScreenHeight(15),),
//                   TextField(
//                     controller: password,
//                     obscureText: hide,
//
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
//                   SizedBox(
//                     height: getProportionateScreenHeight(15),
//                   ),
//                   TextField(
//                     controller: conformpassword,
//                     obscureText: hide,
//                     decoration: InputDecoration(
//                         hintText: "Conform Password",
//                         suffixIcon: IconButton(onPressed: (){
//                           setState(() {
//                             hide=!hide;
//                           });
//                         },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),)
//
//                     ),
//                   ),
//                   SizedBox(
//                     height: getProportionateScreenHeight(15),
//                   ),
//                   Center(
//                     child: ElevatedButton(
//                         style: TextButton.styleFrom(
//                             backgroundColor: Colors.deepOrangeAccent,
//                             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60)
//                         ),
//                         onPressed: (){
//                           if(password.text !=conformpassword.text)
//                           {
//                             showDialog(context: context, builder: (context){
//                               return AlertDialog(
//                                 title: Text("Messages"),
//                                 content: Text("Password doesn't match"),
//                               );
//                             });
//                           }
//                         }, child:Text("Sign Up")),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Already have an account"),
//                       TextButton(onPressed: (){
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>SignIn()));
//                       }, child: Text("Sign In?"))
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
import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("Sign Up"),
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Sign Up"),


      ),
      body: Body(),
    );
  }
}
