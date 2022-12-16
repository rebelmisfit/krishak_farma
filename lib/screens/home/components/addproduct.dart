//
// import 'package:flutter/material.dart';
// import 'package:snippet_coder_utils/FormHelper.dart';
//
// import '../../../components/custom_surfix_icon.dart';
// import '../../../components/default_button.dart';
// import '../../../components/form_error.dart';
// import '../../../components/social_card.dart';
// import '../../../constants.dart';
// import '../../../size_config.dart';
// import '../../sign_up/components/sign_up_form.dart';
//
//
// class AddProduct extends StatelessWidget {
//   static String routeName = "/addproduct";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         //title: Text("Sign In"),
//         backgroundColor: Colors.deepOrangeAccent,
//         title: Text("Add Product "),
//       ),
//       body: Body(),
//     );
//   }
// }
//
//
//
//
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding:
//           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: SizeConfig.screenHeight * 0.01), // 4%
//
//                 SizedBox(height: SizeConfig.screenHeight * 0.00001),
//                 SignUpForm1(),
//                 SizedBox(height: SizeConfig.screenHeight * 0.00001),
//
//                 SizedBox(height: getProportionateScreenHeight(20)),
//
//               ],
//             ),
//           ),
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
// class SignUpForm1 extends StatefulWidget {
//   @override
//   _SignUpForm1State createState() => _SignUpForm1State();
// }
//
// class _SignUpForm1State extends State<SignUpForm1> {
//   final _formKey = GlobalKey<FormState>();
//   String? name;
//   String? password;
//   String? conform_password;
//   bool remember = false;
//   final List<String?> errors = [];
//
//   void addError({String? error}) {
//     if (!errors.contains(error))
//       setState(() {
//         errors.add(error);
//       });
//   }
//
//   void removeError({String? error}) {
//     if (errors.contains(error))
//       setState(() {
//         errors.remove(error);
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           Name(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           Surname(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           ProductName(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           Quantity(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           Location(),
//           SizedBox(height: getProportionateScreenHeight(70)),
//
//           DefaultButton(
//             text: "Add",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
//
//   TextFormField Quantity() {
//     return TextFormField(
//
//       decoration: InputDecoration(
//         enabledBorder: OutlineInputBorder(
//           borderSide:
//           BorderSide(width: 2, color: Color(0xffC5C5C5),),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         labelText: "Quantity",
//         hintText: "Enter Approximate Production",
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/receipt.svg"),
//       ),
//     );
//   }
//   Padding ProductName() {
//
//     final List<String> _item = [
//       "Apple",
//       "Banana",
//       "Grapes",
//       "Orange", "Cotton", "Brinjal", "Wheat", "Corn", "Lady_Finger","Gram", "Peanut", "Soyabin",
//       "Cabbage", "Marigold", "Mogara", "Onion", "Garlic", "Carrot", "Tomato", "Raddish"
//     ];
//     String? selctedItem;
//
//
//
//
//     // return TextFormField(
//     //
//     //   decoration: InputDecoration(
//     //     enabledBorder: OutlineInputBorder(
//     //     borderSide:
//     //     BorderSide(width: 2, color: Color(0xffC5C5C5),),
//     //    borderRadius: BorderRadius.circular(10.0),
//     //     ),
//     //     labelText: "Product name",
//     //     hintText: "Enter product name",
//     //     suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Discover.svg"),
//     //   ),
//     //   child: DropdownButton<String>(
//     //       value: selctedItem,
//     //       onChanged: ((value) {
//     //         setState(() {
//     //           selctedItem = value!;
//     //         });
//     //       }),
//     //       items: _item
//     //           .map((e) => DropdownMenuItem(
//     //                 child: Container(
//     //                   alignment: Alignment.center,
//     //                   child: Row(
//     //                     children: [
//     //                       Container(
//     //                         width: 40,
//     //                         child: Image.asset('assets/images/${e}_Small.png'),
//     //                       ),
//     //                       SizedBox(width: 10),
//     //                       Text(
//     //                         e,
//     //                         style: TextStyle(fontSize: 18),
//     //                       )
//     //                     ],
//     //                   ),
//     //                 ),
//     //                 value: e,
//     //               ))
//     //           .toList(),
//     //       selectedItemBuilder: (BuildContext context) => _item
//     //           .map((e) => Row(
//     //                 children: [
//     //                   Container(
//     //                     width: 42,
//     //                     child: Image.asset('assets/images/${e}_Small.png'),
//     //                   ),
//     //                   SizedBox(width: 5),
//     //                   Text(e)
//     //                 ],
//     //               ))
//     //           .toList(),
//     //   ),
//
//
//     // final List<String> _item = [
//       "Apple",
//       "Banana",
//       "Grapes",
//     //   "Orange", "Cotton", "Brinjal", "Wheat", "Corn", "Lady_Finger","Gram", "Peanut", "Soyabin",
//     //   "Cabbage", "Marigold", "Mogara", "Onion", "Garlic", "Carrot", "Tomato", "Raddish"
//     // ];
//     // String? selctedItem;
//
//
//
//
//
//
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         width: 600,
//
//
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             width: 2,
//             color: Color(0xffC5C5C5),
//           ),
//         ),
//         child: DropdownButton<String>(
//           value: selctedItem,
//           onChanged: ((value) {
//             setState(() {
//               selctedItem = value!;
//             });
//           }),
//           items: _item
//               .map((e) => DropdownMenuItem(
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 40,
//                             child: Image.asset('assets/images/${e}_Small.png'),
//                           ),
//                           SizedBox(width: 10),
//                           Text(
//                             e,
//                             style: TextStyle(fontSize: 18),
//                           )
//                         ],
//                       ),
//                     ),
//                     value: e,
//                   ))
//               .toList(),
//           selectedItemBuilder: (BuildContext context) => _item
//               .map((e) => Row(
//                     children: [
//                       Container(
//                         width: 42,
//                         child: Image.asset('assets/images/${e}_Small.png'),
//                       ),
//                       SizedBox(width: 5),
//                       Text(e)
//                     ],
//                   ))
//               .toList(),
//           hint: Padding(
//             padding: const EdgeInsets.only(top: 12),
//             child: Text(
//               'Product Name',
//             ),
//           ),
//           dropdownColor: Colors.white,
//           isExpanded: true,
//           underline: Container(),
//         ),
//       ),
//     );
//
//
//   }
//
//
//
//   TextFormField Location() {
//     return TextFormField(
//
//       decoration: InputDecoration(
//         enabledBorder: OutlineInputBorder(
//           borderSide:
//           BorderSide(width: 2, color: Color(0xffC5C5C5),),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         labelText: "Location",
//         hintText: "Enter the farm location",
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Discover.svg"),
//       ),
//     );
//   }
//
//   TextFormField Surname() {
//     return TextFormField(
//
//       decoration: InputDecoration(
//         enabledBorder: OutlineInputBorder(
//           borderSide:
//           BorderSide(width: 2, color: Color(0xffC5C5C5),),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         labelText: "Surname",
//         hintText: "Enter your surname",
//
//         //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
//       ),
//     );
//   }
//
//   TextFormField Name() {
//     return TextFormField(
//
//       decoration: InputDecoration(
//         enabledBorder: OutlineInputBorder(
//           borderSide:
//           BorderSide(width: 2, color: Color(0xffC5C5C5),),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         labelText: "Name",
//         hintText: "Enter your name",
//
//         //floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
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
//
//
// ///////// drop down menu
// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key);
//
//   @override
//   State<homepage> createState() => _homepageState();
// }
//
// class _homepageState extends State<homepage> {
//   List<dynamic> countries=[];
//   List<dynamic> stateMasters=[];
//   List<dynamic>state=[];
//
//   String? countryId;
//   String? stateId;
//
//   @override
//
//   void initState()
//   {
//     super.initState();
//     this.countries.add({"val":1 ,"name":"India"});
//     this.countries.add({"val":2 ,"name":"UAE"});
//
//     this.stateMasters=[
//       {"ID":1,"Name":"Assam","ParentId":1},
//       {"ID":2,"Name":"Delhi","ParentId":1},
//       {"ID":3,"Name":"Maharastra","ParentId":1},
//       {"ID":4,"Name":"Panjab","ParentId":1},
//
//       // for different country
//       {"ID":1,"Name":"Abu dabi","ParentId":2},
//       {"ID":2,"Name":"Dubai ","ParentId":2},
//       {"ID":3,"Name":"sharjah","ParentId":2},
//     ];
//   }
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       appBar: AppBar(
//
//         //title: Text("Sign In"),
//         backgroundColor: Colors.deepOrangeAccent,
//         title: Text("Add Product "),
//       ),
//       body: Column(
//         children: [
//           FormHelper.dropDownWidget(
//               context,
//               "Select Country",
//               this.countryId,
//               this.countries,
//               (onChangedVal){
//                 this.countryId=onChangedVal;
//                 print("Selected country :$onChangedVal");
//                 this.state=this.stateMasters.where((stateItem) => stateItem["ParentId"].toString()==onChangedVal.toString(),).toList();
//                 this.stateId=null;
//               },
//               (onValidateVal)
//               {
//                 if(onValidateVal==null)
//                   {
//                     return "Please select country";
//                   }
//                 return null;
//               },
//               borderColor:Theme.of(context).primaryColor,
//               borderFocusColor: Theme.of(context).primaryColor,
//               borderRadius: 10,
//               optionValue: "val",
//               optionLabel: "name",
//
//           ),
//           ///// remaining
//           FormHelper.dropDownWidget(
//             context,
//             "Select State",
//             this.stateId,
//             this.state,
//                 (onChangedVal){
//               this.countryId=onChangedVal;
//               print("Selected state :$onChangedVal");
//               // this.state=this.stateMasters.where((stateItem) => stateItem["ParentId"].toString()==onChangedVal.toString(),).toList();
//               // this.stateId=null;
//             },
//                 (onValidateVal)
//             {
//               if(onValidateVal==null)
//               {
//                 return "Please select country";
//               }
//               return null;
//             },
//             borderColor:Theme.of(context).primaryColor,
//             borderFocusColor: Theme.of(context).primaryColor,
//             borderRadius: 10,
//             optionValue: "val",
//             optionLabel: "name",
//
//           ),
//
//         ],
//       ),
//     ));
//   }
// }




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:krishak_farma/screens/home/components/LocationPage.dart';
//
// import '../../../components/custom_surfix_icon.dart';
// import '../../../models/add_date.dart';
// class AddProduct extends StatefulWidget {
//   static String routeName = "/addproduct";
//   const AddProduct({super.key});
//
//   @override
//   State<AddProduct> createState() => _AddProductState();
// }
//
// class _AddProductState extends State<AddProduct> {
//   final box = Hive.box<Add_data>('data');
//   DateTime date = new DateTime.now();
//   String? selctedItem;
//   String? selctedItemi;
//   final TextEditingController expalin_C = TextEditingController();
//   FocusNode ex = FocusNode();
//   final TextEditingController amount_c = TextEditingController();
//   FocusNode amount_ = FocusNode();
//   final List<String> _item = [
//     // 'food',
//     // "Transfer",
//     // "Transportation",
//     // "Education"
//     // "Apple",
//     // "Banana",
//     // "Grapes",
//
//
//           "Apple",
//       "Banana",
//       "Grapes",
//       "Orange", "Cotton", "Brinjal", "Wheat", "Corn", "Lady_Finger","Gram", "Peanut", "Soyabin",
//       "Cabbage", "Marigold", "Mogara", "Onion", "Garlic", "Carrot", "Tomato", "Raddish"
//   ];
//   final List<String> _itemei = [
//     'Income',
//     "Expand",
//   ];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     ex.addListener(() {
//       setState(() {});
//     });
//     amount_.addListener(() {
//       setState(() {});
//     });
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       body: SafeArea(
//         child: Stack(
//           alignment: AlignmentDirectional.center,
//           children: [
//             background_container(context),
//             Positioned(
//               top: 120,
//               child: main_container(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Container main_container() {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       height: 650,
//       width: 340,
//       child: Column(
//         children: [
//           SizedBox(height: 30),
//           Name(),// for name
//           SizedBox(height: 30),
//           Product(),// for select the product
//           SizedBox(height: 30),
//           Quantity(),// for quantity of product
//           SizedBox(height: 30),
//           Location(),// for location of farmer
//           SizedBox(height: 30),
//           date_time(),
//           SizedBox(height: 30),
//           TakeMobileNo(),// Take mobile No input
//           Spacer(),
//           save(),
//           SizedBox(height: 25),
//
//         ],
//       ),
//     );
//   }
//
//   GestureDetector save() {
//     return GestureDetector(
//       onTap: () {
//         var add = Add_data(
//             selctedItemi!, amount_c.text, date, expalin_C.text, selctedItem!);
//         box.add(add);
//         Navigator.of(context).pop();
//       },
//       child: Container(
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.deepOrangeAccent,
//         ),
//         width: 120,
//         height: 50,
//         child: Text(
//           'Save',
//           style: TextStyle(
//             fontFamily: 'f',
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//             fontSize: 17,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget date_time() {
//     return Container(
//       alignment: Alignment.bottomLeft,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(width: 2, color: Color(0xffC5C5C5))),
//       width: 300,
//       child: TextButton(
//         onPressed: () async {
//           DateTime? newDate = await showDatePicker(
//
//               context: context,
//               initialDate: date,
//               firstDate: DateTime(2020),
//               lastDate: DateTime(2100));
//           if (newDate == Null) return;
//           setState(() {
//             date = newDate!;
//           });
//         },
//         child: Text(
//           'Approximate deal date :  ${date.day}/${date.month}/${date.year}',
//           style: TextStyle(
//             fontSize: 15,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Padding How() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 15),
//         width: 300,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             width: 2,
//             color: Color(0xffC5C5C5),
//           ),
//         ),
//         child: DropdownButton<String>(
//           value: selctedItemi,
//           onChanged: ((value) {
//             setState(() {
//               selctedItemi = value!;
//             });
//           }),
//           items: _itemei
//               .map((e) => DropdownMenuItem(
//             child: Container(
//               alignment: Alignment.center,
//               child: Row(
//                 children: [
//                   Text(
//                     e,
//                     style: TextStyle(fontSize: 18),
//                   )
//                 ],
//               ),
//             ),
//             value: e,
//           ))
//               .toList(),
//           selectedItemBuilder: (BuildContext context) => _itemei
//               .map((e) => Row(
//             children: [Text(e)],
//           ))
//               .toList(),
//           hint: Padding(
//             padding: const EdgeInsets.only(top: 12),
//             child: Text(
//               'How',
//               style: TextStyle(color: Colors.grey),
//             ),
//           ),
//           dropdownColor: Colors.white,
//           isExpanded: true,
//           underline: Container(),
//         ),
//       ),
//     );
//   }
//
//   Padding amount() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: TextField(
//         keyboardType: TextInputType.number,
//         focusNode: amount_,
//         controller: amount_c,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           labelText: 'amount',
//           labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
//         ),
//       ),
//     );
//   }
//
//   Padding explain() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: TextField(
//         focusNode: ex,
//         controller: expalin_C,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           labelText: 'explain',
//           labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
//         ),
//       ),
//     );
//   }
//
//   // for name of farmer
//   Padding Name() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: TextField(
//         //focusNode: ex,
//         //controller: expalin_C,// here for storing the name of farmer modify code later
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           labelText: 'Enter name',
//           labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
//           suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
//         ),
//       ),
//     );
//   }
//
//
//
//   // for location
//
//   Padding Location() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: TextField(
//         //focusNode: ex,
//         //controller: expalin_C,// here for storing the name of farmer modify code later
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           labelText: 'Select location',
//           labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
//           suffixIcon: IconButton(
//             onPressed:() {
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (context) =>LocationPage())
//               );
//             },
//             icon: CustomSurffixIcon(svgIcon: "assets/icons/Discover.svg"),
//           )
//         ),
//       ),
//     );
//   }
//
//   // for quantity of product
//
//   Padding Quantity() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: TextField(
//           keyboardType:TextInputType.number,
//           //focusNode: ex,
//         //controller: expalin_C,// here for storing the name of farmer modify code later
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           labelText: 'Enter quantity of product in Kg',
//           labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
//           suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/receipt.svg"),
//         ),
//       ),
//     );
//   }
//
//   Padding TakeMobileNo(){
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: TextField(
//         keyboardType:TextInputType.number,
//         //focusNode: ex,
//         //controller: expalin_C,// here for storing the name of farmer modify code later
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           labelText: 'Enter Mobile No',
//           labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
//           suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/receipt.svg"),
//         ),
//       ),
//     );
//   }
//   Padding Product() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 15),
//         width: 300,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             width: 2,
//             color: Color(0xffC5C5C5),
//           ),
//         ),
//         child: DropdownButton<String>(
//           value: selctedItem,
//           onChanged: ((value) {
//             setState(() {
//               selctedItem = value!;
//             });
//           }),
//           items: _item
//               .map((e) => DropdownMenuItem(
//             child: Container(
//               alignment: Alignment.center,
//               child: Row(
//                 children: [
//                   Container(
//                     width: 40,
//
//                     //child: Image.asset('images/${e}.png'),
//                     child: Image.asset('assets/images/${e}_Small.png'),
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     e,
//                     style: TextStyle(fontSize: 18),
//                   )
//                 ],
//               ),
//             ),
//             value: e,
//           ))
//               .toList(),
//           selectedItemBuilder: (BuildContext context) => _item
//               .map((e) => Row(
//             children: [
//               Container(
//                 width: 42,
//                 //child: Image.asset('images/${e}.png'),
//                 child: Image.asset('assets/images/${e}_Small.png'),
//               ),
//               SizedBox(width: 5),
//               Text(e)
//             ],
//           ))
//               .toList(),
//
//           hint: Padding(
//             padding: const EdgeInsets.only(top: 12),
//             child: Text(
//               'Select Product',
//               style: TextStyle(color: Colors.grey),
//             ),
//           ),
//           dropdownColor: Colors.white,
//           isExpanded: true,
//           underline: Container(),
//         ),
//       ),
//     );
//   }
//
//   Column background_container(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: double.infinity,
//           height: 240,
//           decoration: BoxDecoration(
//             color: Colors.deepOrangeAccent,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20),
//               bottomRight: Radius.circular(20),
//             ),
//           ),
//           child: Column(
//             children: [
//               SizedBox(height: 40),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: Icon(Icons.arrow_back, color: Colors.white),
//                     ),
//                     Text(
//                       'Add Product',
//                       style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white),
//                     ),
//                     Icon(
//                       Icons.attach_file_outlined,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//     // return Scaffold(
//     //   appBar: AppBar(
//     //
//     //     //title: Text("Sign In"),
//     //     backgroundColor: Colors.deepOrangeAccent,
//     //     title: Text("Add Product "),
//     //   )
//     // );
//
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:krishak_farma/screens/home/components/LocationPage.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../models/add_date.dart';

class AddProduct extends StatefulWidget {
  var txt;
  static String routeName = "/addproduct";

  AddProduct( {Key? key,this.txt}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  final controllerName=TextEditingController();
  final controllerProduct=TextEditingController();
  final controllerQuantity=TextEditingController();
  final controllerMobileNo=TextEditingController();
  final controllerLocation=TextEditingController();
  final controllerDealDate=TextEditingController();








  final box = Hive.box<Add_data>('data');
  DateTime date = new DateTime.now();
  String? selctedItem;
  String? selctedItemi;
  String ? locationn;
  final TextEditingController expalin_C = TextEditingController();
  FocusNode ex = FocusNode();
  final TextEditingController amount_c = TextEditingController();
  FocusNode amount_ = FocusNode();
  final List<String> _item = [


    "Apple",
    "Banana",
    "Grapes",
    "Orange", "Cotton", "Brinjal", "Wheat", "Corn", "Lady_Finger","Gram", "Peanut", "Soyabin",
    "Cabbage", "Marigold", "Mogara", "Onion", "Garlic", "Carrot", "Tomato", "Raddish"
  ];
  final List<String> _itemei = [
    'Income',
    "Expand",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
    amount_.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body:SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            background_container(context),
            Positioned(
              top: 120,
              child: main_container(),
            ),
          ],
        ),
      ),
    );
  }
  Container main_container() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 650,
      width: 340,
      child: Column(
        children: [
          SizedBox(height: 30),
          Name(),// for name
          SizedBox(height: 30),
          Product(),// for select the product
          SizedBox(height: 30),
          Quantity(),// for quantity of product
          SizedBox(height: 30),
          Location(),// for location of farmer
          //finalloc(),
          SizedBox(height: 30),
          date_time(),
          SizedBox(height: 30),
          TakeMobileNo(),// Take mobile No input
          Spacer(),
          save(),
          SizedBox(height: 25),

        ],
      ),
    );
  }

  GestureDetector save() {
    return GestureDetector(
      onTap: () {
        final products=Products(
          name:controllerName.text,
          product: selctedItem!,
          Quantity: int.parse(controllerQuantity.text),
          mobileno: int.parse(controllerMobileNo.text),
          location:"${widget.txt}",
          dealDate:date,




        );
        createProduct(products);
        Navigator.pop(context);


      //   var add = Add_data(
      //       selctedItemi!, amount_c.text, date, expalin_C.text, selctedItem!);
      //   box.add(add);
      //   //final products=Products()
      //   //Navigator.of(context).pop();
      //
        },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepOrangeAccent,
        ),
        width: 120,
        height: 50,
        child: Text(
          'Save',

          style: TextStyle(
            fontFamily: 'f',
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }


  // ElevatedButton save(){
  //   return ElevatedButton(
  //       onPressed:(){
  //         final products=Products(
  //           name:controllerName.text,
  //           //product: selctedItem != null?.text
  //           Quantity: int.parse(controllerQuantity.text),
  //           mobileno: int.parse(controllerMobileNo.text),
  //           //location:
  //           //dealDate:
  //
  //
  //
  //
  //         );
  //         createProduct(products);
  //         Navigator.pop(context);
  //
  //       },
  //       child:Text('Save')
  //   );
  // }

  Widget date_time() {
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Color(0xffC5C5C5))),
      width: 300,
      child: TextButton(
        onPressed: () async {
          DateTime? newDate = await showDatePicker(

              context: context,
              initialDate: date,
              firstDate: DateTime(2020),
              lastDate: DateTime(2100));
          if (newDate == Null) return;
          setState(() {
            date = newDate!;
          });
        },
        child: Text(
          'Approximate deal date :  ${date.day}/${date.month}/${date.year}',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }


  Widget finalloc() {
    return Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          //controller: controllerLocation,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: Color(0xffC5C5C5))),
        width: 300,
        // child: TextButton(
        //   onPressed:() =>
        //     Navigator.of(context).pushReplacement(
        //       MaterialPageRoute(builder: (context) => LocationPage()),
        //     ),
        //
        //   // onPressed: () async {
        //   //   Text? newDate = (await MaterialPageRoute(builder: (context) => LocationPage())) as Text?;
        //   //   if (newDate == Null) return;
        //   //   // setState(() {
        //   //   //   Text = newDate! as DateTime;
        //   //   // });
        //   //},
        //   child: Text(
        //     //'Approximate deal date :  ${date.day}/${date.month}/${date.year}',
        //     '${widget.txt}',
        //     style: TextStyle(
        //       fontSize: 15,
        //       color: Colors.black,
        //     ),
        //
        //   ),
        //   // suffixIcon:IconButton(
        //   //     icon: SvgPicture.asset(
        //   //       "assets/icons/Discover.svg",
        //   //
        //   //     ),
        //   //
        //   //     onPressed:() {
        //   //       Navigator.of(context).pushReplacement(
        //   //         MaterialPageRoute(builder: (context) => LocationPage()),
        //   //       );
        //   //     }
        //   // ),
        // ),
        child:TextButton.icon(
          icon: SvgPicture.asset(
            "assets/icons/Discover.svg",

          ),
          label:Text( "${widget.txt}"?? "press icon for location",
            style: TextStyle(
            //fontSize: 13,
            color: Colors.black,
          ),
          ),



          onPressed:() =>
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LocationPage()),
              ),
        )
    );
  }

  Padding How() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selctedItemi,
          onChanged: ((value) {
            setState(() {
              selctedItemi = value!;
            });
          }),
          items: _itemei
              .map((e) => DropdownMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    e,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            value: e,
          ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _itemei
              .map((e) => Row(
            children: [Text(e)],
          ))
              .toList(),
          hint: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'How',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Padding amount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        focusNode: amount_,
        controller: amount_c,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'amount',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
        ),
      ),
    );
  }

  Padding explain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: ex,
        controller: expalin_C,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'explain',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
        ),
      ),
    );
  }

  // for name of farmer
  Padding Name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        //focusNode: ex,
        //controller: expalin_C,// here for storing the name of farmer modify code later
        controller: controllerName,
        decoration: InputDecoration(

          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'Enter name',

          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        ),
      ),
    );
  }



  // for location

  Padding Location() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.none,
        //focusNode: ex,
        //autofocus: false,
        //initialValue: 'your initial text',
        controller: expalin_C,// here for storing the name of farmer modify code later
        showCursor: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          //labelText: "${widget.txt}",

          hintText: "select location press icon ",
          labelText: "${widget.txt}",
          // hintText: "${widget.txt}",
          // labelText: "select location press icon at right side",
          labelStyle: TextStyle(fontSize: 15, color: Colors.black),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10),

              borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
          // suffixIcon: IconButton(
          //
          //   // onPressed:() {
          //   //   Navigator.of(context).pushReplacement(
          //   //     MaterialPageRoute(builder: (context) =>LocationPage())
          //   //   );
          //   },
          //   icon: CustomSurffixIcon(svgIcon: "assets/icons/Discover.svg"),
          // )
          //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Discover.svg",),
          suffixIcon:IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Discover.svg",

              ),

              onPressed:() {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LocationPage()),


                );
              }
          ),
        ),

      ),
    );
  }

  // for quantity of product

  Padding Quantity() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controllerQuantity,
        keyboardType:TextInputType.number,
        //focusNode: ex,
        //controller: expalin_C,// here for storing the name of farmer modify code later
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'Enter quantity of product in Kg',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/receipt.svg"),
        ),
      ),
    );
  }

  Padding TakeMobileNo(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controllerMobileNo,
        keyboardType:TextInputType.number,
        //focusNode: ex,
        //controller: expalin_C,// here for storing the name of farmer modify code later
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'Enter Mobile No',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
        ),
      ),
    );
  }
  Padding Product() {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selctedItem,

          onChanged: ((value) {

            setState(() {

              selctedItem = value!;

            });
          }),
          items: _item
              .map((e) => DropdownMenuItem(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Container(
                    width: 40,

                    //child: Image.asset('images/${e}.png'),
                    child: Image.asset('assets/images/${e}_Small.png'),
                  ),
                  SizedBox(width: 10),
                  Text(

                    e,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            value: e,
          ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => _item
              .map((e) => Row(
            children: [
              Container(
                width: 42,
                //child: Image.asset('images/${e}.png'),
                child: Image.asset('assets/images/${e}_Small.png'),
              ),
              SizedBox(width: 5),
              Text(e)
            ],
          ))
              .toList(),

          hint: Padding(
            padding: const EdgeInsets.only(top: 12),

            child: Text(
              'Select Product',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }

  Column background_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Text(
                      'Add Product',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );


  }
  Future createProduct(Products user) async{
    final docUser=FirebaseFirestore.instance.collection('products').doc();
    //user.id=docUser.id;
    final json=user.toJson();
    await docUser.set(json);

  }
}


class Products{
  final String name;
  final String product;
  final int Quantity;
  final int mobileno;
  var location;
  final DateTime dealDate;
  Products({
    required this.name,
    required this.product,
    required this.Quantity,
    required this.mobileno,
    required this.location,
    required this.dealDate,

  });



  Map<String ,dynamic> toJson()=>
      {
        'name':name,
        'Product':product,
        'Quantity in KG':Quantity,
        'Mobileno':mobileno,
        'Location':location,
        'Deal_Date':dealDate
      };
}
