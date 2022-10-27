// import 'package:baitap1/model/paycartmodel.dart';
// import 'package:baitap1/model/product_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class body extends StatefulWidget {
//   const body({super.key, required this.dm1});
//   List<Productmodel> dm;
//   @override
//   State<body> createState() => _bodyState();
// }

// class _bodyState extends State<body> {
//   List<Productmodel> dm = [];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Container(child: Text(id)),
//         ...dm.map((e) {
//           return SingleChildScrollView(
//             child: Row(
//               children: [
//                 Container(
//                     width: 300,
//                     height: 300,
//                     margin: EdgeInsets.only(top: 20, left: 30),
//                     decoration: BoxDecoration(
//                         color: Colors.blue,
//                         border: Border(
//                           top: BorderSide(color: Colors.green),
//                           left: BorderSide(color: Colors.green),
//                           right: BorderSide(color: Colors.green),
//                           bottom: BorderSide(color: Colors.green),
//                         )),
//                     child: Image.network(e.image.toString())),
//                 Container(
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                       Container(
//                           width: 400,
//                           padding: EdgeInsets.all(10),
//                           child: Text(e.title.toString(),
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                   color: Colors.blue),
//                               // overflow: TextOverflow.ellipsis,
//                               maxLines: 3)),
//                       Container(
//                         width: 500,
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           e.description.toString(),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 5,
//                         ),
//                       ),
//                       Row(children: [
//                         Container(
//                           padding:
//                               EdgeInsets.only(left: 10, top: 10, bottom: 10),
//                           child: Text(
//                             "đ" + e.price.toString() + "00",
//                             style: TextStyle(color: Colors.red, fontSize: 15),
//                           ),
//                         ),
//                       ]),
//                       Row(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(left: 10),
//                             child: Icon(
//                               Icons.star_rate,
//                               color: Colors.red,
//                               size: 15,
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(left: 3),
//                             child: Icon(
//                               Icons.star_rate,
//                               color: Colors.red,
//                               size: 15,
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(left: 3),
//                             child: Icon(
//                               Icons.star_rate,
//                               color: Colors.red,
//                               size: 15,
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(left: 3),
//                             child: Icon(
//                               Icons.star_rate,
//                               color: Colors.red,
//                               size: 15,
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(left: 3),
//                             child: Icon(
//                               Icons.star_half,
//                               color: Colors.red,
//                               size: 15,
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(top: 3),
//                             child: Text("Đã bán 100",
//                                 style: TextStyle(fontSize: 12)),
//                           )
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(left: 10, top: 10),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.location_on_outlined,
//                                   size: 15,
//                                 ),
//                                 Text("Hà Nội", style: TextStyle(fontSize: 10)),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Container(
//                           margin: EdgeInsets.only(top: 20, left: 10),
//                           decoration: BoxDecoration(
//                               border: Border(
//                             top: BorderSide(color: Colors.red),
//                             left: BorderSide(color: Colors.red),
//                             right: BorderSide(color: Colors.red),
//                             bottom: BorderSide(color: Colors.red),
//                           )),
//                           child: TextButton(
//                               onPressed: () {
//                                 getmodel(pcd, e, x);
//                                 sl++;
//                                 setState(() {
//                                   sl;
//                                 });
//                                 Navigator.pop(context);
//                               },
//                               child: Row(
//                                 children: [
//                                   Container(
//                                       padding: EdgeInsets.only(right: 3),
//                                       child: Icon(
//                                         Icons.shopping_cart,
//                                         color: Colors.red,
//                                       )),
//                                   Text(
//                                     "Thêm vào giỏ hàng",
//                                     style: TextStyle(color: Colors.red),
//                                   )
//                                 ],
//                               )))
//                     ]))
//               ],
//             ),
//           );
//         })
//       ],
//     );
//   }

//   void getmodel(List<Paycardmodel> pcd, Productmodel pd, num x) {
//     for (int i = 0; i < pcd.length; i++) {
//       if (pcd[i].pm!.id == pd.id) {
//         pcd[i].sl = pcd[i].sl! + 1;
//         return;
//       }
//     }
//     Paycardmodel dm = Paycardmodel(pm: pd, sl: 1);
//     pcd.add(dm);
//   }

//   void getsl(int sl) {
//     sl = 0;
//     sl++;
//   }
// }
