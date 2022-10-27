import 'package:baitap1/CART-SHOP/appbar1.dart';
import 'package:baitap1/CART-SHOP/body3.dart';
import 'package:baitap1/destination.dart';
import 'package:baitap1/formlogin.dart';
import 'package:baitap1/homepage.dart';
import 'package:baitap1/CART-SHOP/listview1.dart';
import 'package:baitap1/login_page.dart';
import 'package:baitap1/model/product_model.dart';
import 'package:baitap1/provider/product_provider.dart';
import 'package:baitap1/register.dart';
import 'package:baitap1/CART-SHOP/productlist_page.dart';
import 'package:baitap1/show.dart';
import 'package:flutter/material.dart';
import 'package:baitap1/trangclassroom.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//   ));
// // }
// void main() {
//   runApp(MaterialApp(
//     home: DestinationPage(),
//   ));
// }
// void main() {
//   runApp(MaterialApp(
//     home: trangtinchi(),
//   ));
// }
// void main() {
//   runApp(MaterialApp(
//     home: formlogin1(),
//   ));
// }
// void main() {
//   runApp(MaterialApp(
//     home: formregister(),
//   ));
// }
// void main() {
//   runApp(MultiProvider(
//     providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
//     child: MaterialApp(
//       home: appbar(),
//     ),
//   ));
// }
// void main() {
//   runApp(MaterialApp(
//     home: appbar(),
//   ));
// }
void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
    child: MaterialApp(
      home: ProductListPage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
