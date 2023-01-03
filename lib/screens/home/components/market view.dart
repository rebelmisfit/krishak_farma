// import 'package:flutter/material.dart';
//
// import '../../../components/custom_surfix_icon.dart';
//
// class Data {
//   String? name;
//   int? phone;
//   String? Age;//means location
//
//   Data({required this.name, required this.phone, required this.Age});
// }
//
// List<Data> myData = [
//
//   // Data(name: "Ridge Ground", phone: 2000, Age: "Pune"),
//   // Data(name: "Green Chilli", phone: 2500, Age: "Pune"),
//   // Data(name: "Pumpkin", phone: 2000, Age: "Pune"),
//   // Data(name: "Cauliflower", phone: 550, Age: "Pune"),
//   // Data(name: "Little gourd", phone: 2100, Age: "Pune"),
//   // Data(name: "Carrot", phone: 1750, Age: "Pune"),
//   // Data(name: "Garlic", phone: 3200, Age: "Pune"),
//   // Data(name: "Bitter Gourd", phone: 2000, Age: "Pune"),
//   // Data(name: "Onion", phone: 1200, Age: "Pune"),/////////
//   // Data(name: "Bottle gourd", phone: 1150, Age: "Pune"),
//   // Data(name: "Tomato Desi", phone: 500, Age: "Pune"),
//   // Data(name: "Capsicum", phone: 2000, Age: "Pune"),
//   // Data(name: "Brinjal", phone: 1300, Age: "Pune"),
//   // Data(name: "Okra", phone: 2750, Age: "Pune"),
//   // Data(name: "Cucumber", phone: 1500, Age: "Pune"),
//   // Data(name: "Drumstick", phone: 7750, Age: "Pune"),
//   // Data(name: "Potato", phone: 1500, Age: "Pune"),/////
//   // Data(name: "Cabbage", phone: 800, Age: "Pune"),
//   // Data(name: "Orange", phone: 6500, Age: "Pune"),
//   // Data(name: "Plum", phone: 6000, Age: "Pune"),
//   // Data(name: "Apple", phone: 9000, Age: "Pune"),
//   // Data(name: "Water melon", phone: 1000, Age: "Pune"),
//   // Data(name: "Musk melon", phone: 1800, Age: "Pune"),
//   // Data(name: "Sapota", phone: 2000, Age: "Pune"),
//   // Data(name: "Papaya", phone: 900, Age: "Pune"),
//   // Data(name: "Guava", phone: 2400, Age: "Pune"),
//   // Data(name: "Sweet lime", phone: 1200, Age: "Pune"),
//   // Data(name: "Grapes Green", phone: 8500, Age: "Pune"),
//   // Data(name: "Pineapple", phone: 2200, Age: "Pune"),
//
//
//
//   // Data(name: "Pista", phone: 6464646, Age: "Pune"),
//   // Data(name: "Banana", phone: 6464646, Age: "Pune"),
//   // Data(name: "Banana", phone: 6464646, Age: "Pune"),
//   // Data(name: "Banana", phone: 6464646, Age: "Pune"),
//   // Data(name: "Banana", phone: 6464646, Age: "Pune"),
//   // Data(name: "Banana", phone: 6464646, Age: "Pune"),
//   // Data(name: "Banana", phone: 6464646, Age: "Pune"),
//   // Data(name: "Banana", phone: 6464646, Age: "Pune"),
//
//
// ];
//
// class MarketView extends StatefulWidget {
//   const MarketView({Key? key}) : super(key: key);
//
//
//   @override
//   State<MarketView> createState() => _MarketViewState();
// }
//
// class _MarketViewState extends State<MarketView> {
//   bool sort = true;
//   List<Data>? filterData;
//
//   onsortColum(int columnIndex, bool ascending) {
//     if (columnIndex == 0) {
//       if (ascending) {
//         filterData!.sort((a, b) => a.name!.compareTo(b.name!));
//       } else {
//         filterData!.sort((a, b) => b.name!.compareTo(a.name!));
//       }
//     }
//   }
//
//   @override
//   void initState() {
//     filterData = myData;
//     super.initState();
//   }
//
//   TextEditingController controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.deepOrangeAccent,
//           title: Text("Market View"),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               color: Theme.of(context).canvasColor,
//               borderRadius: const BorderRadius.all(Radius.circular(10)),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                     width: double.infinity,
//                     child: Theme(
//                       data: ThemeData.light()
//                           .copyWith(cardColor: Theme.of(context).canvasColor),
//                       child: PaginatedDataTable(
//                         sortColumnIndex: 0,
//                         sortAscending: sort,
//                         header: Container(
//                           // padding: const EdgeInsets.all(5),
//                           // decoration: BoxDecoration(
//                           //     border: Border.all(
//                           //       color: Colors.grey,
//                           //     ),
//                           //     borderRadius: BorderRadius.circular(12)),
//                           child: TextField(
//                             controller: controller,
//                             decoration: InputDecoration(
//                               contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//                                 hintText: "Search Product",
//                               hintStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
//                               floatingLabelBehavior: FloatingLabelBehavior.always,
//                               enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(width: 2, color:Colors.deepOrangeAccent)),
//                               focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(width: 2, color: Colors.deepOrangeAccent)),
//                               suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Search Icon.svg"),
//                             ),
//                             onChanged: (value) {
//                               setState(() {
//                                 myData = filterData!
//                                     .where((element) =>
//                                     element.name!.contains(value))
//                                     .toList();
//                               });
//                             },
//                           ),
//                         ),
//                         source: RowSource(
//                           myData: myData,
//                           count: myData.length,
//                         ),
//                         rowsPerPage: 10,
//                         columnSpacing: 10,
//                         columns: [
//                           DataColumn(
//                               label: const Text(
//                                 "Product",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w600, fontSize: 14),
//                               ),
//                               onSort: (columnIndex, ascending) {
//                                 setState(() {
//                                   sort = !sort;
//                                 });
//
//                                 onsortColum(columnIndex, ascending);
//                               }),
//                           const DataColumn(
//                             label: Text(
//                               "Price in Rs/Q",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600, fontSize: 14),
//                             ),
//                           ),
//                           const DataColumn(
//                             label: Text(
//                               "Location",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600, fontSize: 14),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )),
//                 const SizedBox(height: 20),
//
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//
// class RowSource extends DataTableSource {
//   var myData;
//   final count;
//   RowSource({
//     required this.myData,
//     required this.count,
//   });
//
//   @override
//   DataRow? getRow(int index) {
//     if (index < rowCount) {
//       return recentFileDataRow(myData![index]);
//     } else
//       return null;
//   }
//
//   @override
//   bool get isRowCountApproximate => false;
//
//   @override
//   int get rowCount => count;
//
//   @override
//   int get selectedRowCount => 0;
// }
//
// DataRow recentFileDataRow(var data) {
//   return DataRow(
//     cells: [
//       DataCell(Text(data.name ?? "Name")),
//       DataCell(Text(data.phone.toString())),
//       DataCell(Text(data.Age ??"Name")),
//     ],
//   );
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketView extends StatelessWidget {
  const MarketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String ,dynamic>> _allUsers=[
      
    ];
    TableRow buildRow(List<String> cells,{bool isHeader=false})=>TableRow(

      children: cells.map((cell){
        final style=TextStyle(
          fontWeight: isHeader ? FontWeight.bold:FontWeight.normal,
          fontSize: isHeader ? 14:13,
          color: isHeader ? Colors.redAccent:Colors.black,

          //color: Colors.deepOrangeAccent
        );
        return Padding(padding:const EdgeInsets.all(12),
        child: Center (child: Text(cell,style: style,),));
      }
    ).toList()
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Market View"),
      ),
      body: Container(
        child:StreamBuilder(
          stream: FirebaseFirestore.instance.collection('marketview').snapshots(),
          builder:(context,AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData){

              return ListView.builder(

                  itemCount: snapshot.data!.docs.length,

                  itemBuilder: (context,index)=>Table(
                    //sortColumnIndex: 0,
                         //sortAscending: sort,

                    border: TableBorder.all(
                      color:Colors.redAccent,   width : 1.0,   style :BorderStyle.solid,    borderRadius: BorderRadius.all(Radius.circular(15),),
                    ),
                      children: [
                      buildRow(['Product','Price Rs/Q','Location'],isHeader: true),

                        buildRow([snapshot.data?.docs[index]['product'],snapshot.data?.docs[index]['Price'],snapshot.data?.docs[index]['Location']]),
                      ],
                      // columns: [
                      //   DataColumn(
                      //       label: Text('Product',
                      //         style: TextStyle(
                      //             // fontSize: 20,
                      //             // fontWeight: FontWeight.w800,
                      //             color: Colors.red
                      //         ),
                      //       )
                      //   ),
                      //   DataColumn(
                      //       label: Text('Price',
                      //         style: TextStyle(
                      //             // fontSize: 20,
                      //             // fontWeight: FontWeight.w800,
                      //             color: Colors.red
                      //         ),
                      //       )
                      //   ),
                      //   DataColumn(
                      //       label: Text('Location',
                      //         style: TextStyle(
                      //             //fontSize: 20,
                      //             //fontWeight: FontWeight.w800,
                      //             color: Colors.red
                      //         ),
                      //       )
                      //   ),
                      // ],
                      // rows: [
                      //   DataRow(
                      //       cells: [
                      //         DataCell(
                      //             Text(
                      //                 snapshot.data?.docs[index]['product']
                      //             )
                      //         ),
                      //         DataCell(
                      //             Text(
                      //                 snapshot.data?.docs[index]['Price']
                      //             )
                      //         ),
                      //         DataCell(
                      //             Text(
                      //                 snapshot.data?.docs[index]['Location']
                      //             )
                      //         ),
                      //       ]
                      //   ),
                      //
                      // ]
                  )
              );
            }
            else
            {
              return Container(
                  child: Center (
                    child: Text("Not have data"),
                  )
              );
            }

          } ,
        ) ,
      ),
    );
  }
}

