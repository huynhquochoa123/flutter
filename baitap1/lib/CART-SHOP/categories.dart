import 'package:baitap1/CART-SHOP/listview1.dart';
import 'package:baitap1/model/product_model.dart';
import 'package:baitap1/productlist1_page.dart';
import 'package:baitap1/provider/product_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kd = 20.0;
const ktextcolor = Color(0xFF535353);
const ktextlightcolor = Color(0xFFACACAC);
const appbarcolor = Color.fromARGB(0, 133, 151, 166);

class categories extends StatefulWidget {
  categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getList();
    }
    List<String> categori = pp.list2;
    List<Productmodel> dm5 = [];
    List<String> dm6 = [];
    return Container(
      child: Row(
        children: [
          ...pp.list2.map((e) {
            return Container(
                width: 140,
                height: 40,
                margin: EdgeInsets.only(top: 10, right: 10),
                child: ElevatedButton(
                  child: Text(e),
                  onPressed: (() {
                    setState(() {
                      pp.list = getcategory(pp.list, e);
                      pp.list = pp.list;
                    });
                  }),
                ));
          }).toList()
        ],
      ),

      // padding: EdgeInsets.all(10),
      // child: SizedBox(
      //   height: 25,
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: categori.length,
      //     itemBuilder: (context, index) => buildCategories(index),
      //   ),
      // ),
    );
    //   return Padding(
    //     padding: const EdgeInsets.symmetric(vertical: kd),
    //     child: SizedBox(
    //         height: 25,
    //         child: Row(
    //           children: [
    //             ...pp.list2.map((e) {
    //               return Padding(
    //                 padding: const EdgeInsets.only(left: 20, right: 20),
    //                 child: Container(
    //                   child: Text(e),
    //                 ),
    //               );
    //             }).toList()
    //           ],
    //         )),
    //   );
    // }
  }

  // Widget buildCategories(int index) {
  //   var pp = Provider.of<ProductProvider>(context);
  //   List<Productmodel> dm3 = [];
  //   List<Productmodel> dm4 = [];
  //   if (pp.list.isEmpty) {
  //     pp.getList();
  //   }
  //   List<String> categori = pp.list2;
  //   return GestureDetector(
  //     onTap: () {
  //       // dm1 = dm1
  //       //                 .where((element) => element.category!
  //       //                     .toLowerCase()
  //       //                     .contains(search.toLowerCase()))
  //       //                 .toList();
  //       //             setState(() {
  //       //               pp.list = dm1;
  //       //             });
  //       selectedIndex = index;
  //       dm3 = pp.list;
  //       dm3.map((e) {
  //         dm3.removeWhere(
  //             (element) => element.category.toString() != categori[index]);
  //       }).toList();

  //       setState(() {
  //         pp.list = dm3;
  //       });
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: kd),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             categori[index],
  //             style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 color: selectedIndex == index ? ktextcolor : ktextlightcolor),
  //           ),
  //           Container(
  //               margin: EdgeInsets.only(top: kd / 5),
  //               height: 2,
  //               width: 50,
  //               color:
  //                   selectedIndex == index ? Colors.black : Colors.transparent)
  //         ],
  //       ),
  //     ),
  //   );
  // }

  List<Productmodel> getcategory(List<Productmodel> ct, String pd) {
    ct.map((e) {
      ct.removeWhere((element) => element.category != pd);
    }).toList();
    return ct;
  }
}
