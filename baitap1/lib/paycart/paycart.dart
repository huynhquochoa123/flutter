import 'dart:math';

import 'package:baitap1/model/paycartmodel.dart';
import 'package:baitap1/model/product_model.dart';
import 'package:baitap1/paycart/cart_controller.dart';
import 'package:baitap1/product_page2.dart';
import 'package:baitap1/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:provider/provider.dart';

class paycart extends StatefulWidget {
  paycart({super.key, required});

  @override
  State<paycart> createState() => paycart1();
}

class paycart1 extends State<paycart> {
  num sum = 0;
  num price = 0;
  int add = 0;
  int sub = 0;
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);

    final List<Paycardmodel> dm2 = pp.pcd;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          // Container(child: Text(id)),
          ...dm2.map((e) {
            return SingleChildScrollView(
              child: Container(
                height: 100,
                child: Row(children: [
                  Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 20, left: 30),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            top: BorderSide(color: Colors.green),
                            left: BorderSide(color: Colors.green),
                            right: BorderSide(color: Colors.green),
                            bottom: BorderSide(color: Colors.green),
                          )),
                      child: Image.network(e.pm!.image.toString())),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 400,
                          margin: EdgeInsets.only(
                              left: 5, right: 10, bottom: 5, top: 20),
                          child: Text(e.pm!.title.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.blue),
                              // overflow: TextOverflow.ellipsis,
                              maxLines: 3)),
                      Container(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 5),
                        child: Text(
                          "\$" + e.pm!.price.toString(),
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      child: IconButton(
                    onPressed: (() {
                      // int countadd1 = e.sl!.toInt();
                      // if (e.sl! > countadd1 || countadd1 == 1) {
                      //   countadd1 = 1;
                      // } else {
                      //   countadd1 = countadd1 - 1;
                      // }
                      // e.sl = e.sl! - 1;
                      // if (e.sl == 1) {
                      //   e.sl = 1;
                      // }
                      if (e.sl! >= 1) {
                        e.sl = e.sl! - 1;
                      } else {
                        e.sl = 1;
                        return;
                      }
                      setState(() {
                        sub = e.sl!.toInt();
                        tongtien(dm2, sub);
                        e.sl = sub;
                      });
                    }),
                    icon: Icon(Icons.remove_circle),
                  )),
                  Text('${e.sl!.toString()}'),
                  Container(
                      child: IconButton(
                    onPressed: (() {
                      setState(() {
                        e.sl = e.sl! + 1;
                        add = e.sl!.toInt();
                        price = tongtien(dm2, e.sl!.toInt());
                      });
                    }),
                    icon: Icon(Icons.add_circle),
                  )),
                ]),
              ),
            );
          }),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "TOTAL PRICE: ",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "\$" + '${tongtien(dm2, add)}',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  num tongtien(List<Paycardmodel> dm1, int sl) {
    double tong = 0;
    // dm1.map((e) {
    //
    // }).toList();
    for (int i = 0; i < dm1.length; i++) {
      tong = tong + dm1[i].pm!.price!.toDouble() * dm1[i].sl!.toInt();
    }
    tong.toStringAsPrecision(3);
    return tong;
  }
}

// class countsl extends StatefulWidget {
//   countsl({super.key, required this.add});
//   int add;
//   @override
//   State<countsl> createState() => _countslState();
// }

// class _countslState extends State<countsl> {
//   int add = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: IconButton(
//       onPressed: (() {
//         setState(() {
//           add++;
//         });
//       }),
//       icon: Icon(Icons.add_circle),
//     ));
//   }
// }

AppBar buildAppBar(context) {
  return AppBar(
    backgroundColor: Colors.blue[200],
    title: Center(child: Text("PAY CART")),
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_rounded, color: Colors.black),
      onPressed: () => Navigator.pop(context),
    ),
    // actions: <Widget>[
    //   IconButton(
    //     icon: Icon(
    //       Icons.search_sharp,
    //       color: Colors.black,
    //     ),
    //     onPressed: () {},
    //   ),

    // ],
  );
}
