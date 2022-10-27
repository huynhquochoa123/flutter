// import 'package:baitap1/CART-SHOP/appbar.dart';
// import 'package:baitap1/CART-SHOP/cart-controller.dart';
// import 'package:baitap1/CART-SHOP/productlist_page2.dart';
// import 'package:baitap1/model/product_model.dart';
// import 'package:baitap1/onhover.dart';
// import 'package:baitap1/paycart/cart_controller.dart';
// import 'package:baitap1/paycart/paycart.dart';
// import 'package:baitap1/profliecart/detail.dart';
// import 'package:baitap1/provider/product_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';

// import 'package:provider/provider.dart';

// class girdview extends StatelessWidget {
//   // final List<Productmodel> pd;

//   girdview({super.key});
//   List<String> btn = ["Buy Now"];
//   final cartcontroller1 = Get.put(cartcontroller());
//   final List<Productmodel> listcard = [];
//   @override
//   Widget build(BuildContext context) {
//     var pp = Provider.of<ProductProvider>(context);
//     List<dynamic> dm3 = [];
//     if (pp.list.isEmpty) {
//       pp.getList();
//     }
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 1000,
//           child: GridView.count(
//             crossAxisCount: 3,
//             crossAxisSpacing: 5,
//             scrollDirection: Axis.vertical,
//             children: [
//               ...pp.list.map((e) {
//                 return Container(
//                   width: MediaQuery.of(context).size.width - 100,
//                   height: 50,
//                   child: Card(
//                     elevation: 10,
//                     shadowColor: Colors.grey,
//                     margin: EdgeInsets.all(5),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(color: Colors.grey),
//                     ),
//                     child: Column(
//                       children: [
//                         Container(
//                           padding: EdgeInsets.all(5),
//                           width: MediaQuery.of(context).size.width - 50,
//                           height: 100,
//                           child: GestureDetector(
//                             onTap: (() => Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => detail(dm: [e])))),
//                             child: Image.network(e.image.toString()),
//                           ),
//                           decoration: BoxDecoration(
//                               color: Colors.blue,
//                               image: DecorationImage(
//                                   image: AssetImage(e.image.toString()),
//                                   fit: BoxFit.cover),
//                               borderRadius: BorderRadius.circular(5)),
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Container(
//                             //   margin: EdgeInsets.all(3),
//                             //   child: Text("Id: " + e.id.toString()),
//                             // ),
//                             Center(
//                               child: Container(
//                                 // width: MediaQuery.of(context).size.width - 100,
//                                 // height: 20,
//                                 padding: EdgeInsets.only(left: 10),
//                                 margin: EdgeInsets.only(top: 10),
//                                 child: Text(e.title.toString(),
//                                     overflow: TextOverflow.ellipsis),
//                               ),
//                             ),
//                             // Container(
//                             //   margin: EdgeInsets.all(3),
//                             //   child: Text("Category: " + e.category.toString()),
//                             // ),
//                           ],
//                         ),
//                         Row(children: [
//                           Container(
//                             padding:
//                                 EdgeInsets.only(left: 10, top: 10, bottom: 10),
//                             child: Text(
//                               "đ" + e.price.toString() + "00",
//                               style: TextStyle(color: Colors.red, fontSize: 15),
//                             ),
//                           ),
//                         ]),
//                         Row(
//                           children: [
//                             Container(
//                               padding: EdgeInsets.only(left: 3),
//                               child: Icon(
//                                 Icons.star_rate,
//                                 color: Colors.red,
//                                 size: 15,
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(left: 3),
//                               child: Icon(
//                                 Icons.star_rate,
//                                 color: Colors.red,
//                                 size: 15,
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(left: 3),
//                               child: Icon(
//                                 Icons.star_rate,
//                                 color: Colors.red,
//                                 size: 15,
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(left: 3),
//                               child: Icon(
//                                 Icons.star_rate,
//                                 color: Colors.red,
//                                 size: 15,
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(left: 3),
//                               child: Icon(
//                                 Icons.star_half,
//                                 color: Colors.red,
//                                 size: 15,
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(top: 3),
//                               child: Text("Đã bán 100",
//                                   style: TextStyle(fontSize: 12)),
//                             )
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               padding: EdgeInsets.only(left: 3),
//                               child: Row(
//                                 children: [
//                                   Icon(
//                                     Icons.location_on_outlined,
//                                     size: 15,
//                                   ),
//                                   Text("Hà Nội",
//                                       style: TextStyle(fontSize: 10)),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                                 margin: EdgeInsets.only(
//                                     top: 10, right: 5, bottom: 3),
//                                 // decoration: BoxDecoration(color: Colors.green),
//                                 child: IconButton(
//                                     onPressed: () {
//                                       // cartcontroller1.addproduct(e);
//                                       // Navigator.push(
//                                       //     context,
//                                       //     MaterialPageRoute(
//                                       //         builder: (context) =>
//                                       //             paycart(dm1: [e])));
//                                       // listcard.add(e);

//                                       dm3 = getlistcart(e);
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) => paycart(
//                                                     dm1: [e],
//                                                   )));
//                                     },
//                                     icon: Icon(
//                                       Icons.shopping_cart,
//                                       size: 20,
//                                     )))
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//                 // Text(e.title ?? "");
//               }).toList()
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   List getlistcart(Productmodel pd) {
//     List<Productmodel> dn = [];
//     dn.add(pd);
//     return dn;
//   }
// }
