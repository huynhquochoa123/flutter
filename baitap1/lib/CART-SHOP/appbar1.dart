// import 'package:baitap1/CART-SHOP/body3.dart';
// import 'package:flutter/material.dart';
// import 'package:baitap1/CART-SHOP/productlist_page.dart';

// class appbar extends StatelessWidget {
//   appbar({super.key});
//   var userNameController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: buildAppBar(),
//         body: Container(
//           child: Column(
//             children: [
//               Container(
//                 child: Body(),
//               ),
//               // Container(
//               //   height: 490,
//               //   width: 1000,
//               //   child: ProductListPage(),
//               // )
//             ],
//           ),
//         ));
//   }

//   AppBar buildAppBar() {
//     Container(
//       child: TextFormField(
//           controller: userNameController,
//           decoration: InputDecoration(hintText: "nhập thông tin cần tìm kiếm")),
//     );
//     return AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       leading: IconButton(
//         icon: Icon(Icons.arrow_back_rounded, color: Colors.black),
//         onPressed: () {},
//       ),
//       actions: <Widget>[
//         IconButton(
//           icon: Icon(
//             Icons.search_sharp,
//             color: Colors.black,
//           ),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(
//             Icons.shopping_cart,
//             color: Colors.black,
//           ),
//           onPressed: () {},
//         )
//       ],
//     );
//   }
// }
