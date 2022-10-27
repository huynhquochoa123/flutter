import 'dart:math';

import 'package:baitap1/CART-SHOP/categories.dart';
import 'package:baitap1/CART-SHOP/girdview1.dart';
import 'package:baitap1/CART-SHOP/listview1.dart';
import 'package:baitap1/model/paycartmodel.dart';
import 'package:baitap1/model/product_model.dart';
import 'package:baitap1/onhover.dart';
import 'package:baitap1/paycart/paycart.dart';
import 'package:baitap1/productlist1_page.dart';
import 'package:baitap1/profliecart/detail1.dart';
import 'package:baitap1/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import 'package:provider/provider.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  ProductListPage1 createState() => ProductListPage1();
}

class ProductListPage1 extends State<ProductListPage> {
  List<String> btn = ["Buy Now"];
  List<Productmodel> dm3 = [];
  List<Paycardmodel> dm = [];
  List<Paycardmodel> pcd = [];
  List<Productmodel> dm1 = [];

  int sl = 0;

  num x = 0;
  bool check = false;
  var search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    List<Productmodel> d1 = pp.list;
    if (pp.list.isEmpty) {
      pp.getList();
    }

    return Scaffold(
        appBar: buildappbar(),
        body: Center(
            child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    margin: EdgeInsets.only(top: 10, right: 60),
                    child: ElevatedButton(
                      child: Text("ALL"),
                      onPressed: (() {
                        pp.list = List.from(pp.tam);
                        dm1 = List.from(pp.list);
                        setState(() {
                          pp.list = dm1;
                        });
                      }),
                    ),
                  ),
                  ...pp.list2.map((e) {
                    return Container(
                        width: 140,
                        height: 40,
                        margin: EdgeInsets.only(left: 10, top: 10, right: 60),
                        child: Row(
                          children: [
                            ElevatedButton(
                              child: Text(e),
                              onPressed: (() {
                                pp.list = List.from(pp.tam);
                                dm1 = List.from(pp.list);
                                dm1 = getcategory(dm1, e);
                                setState(() {
                                  pp.list = dm1;
                                });
                              }),
                            ),
                          ],
                        ));
                  }).toList(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (pp.showGird == true) {
                                pp.showGird = false;
                              } else {
                                pp.showGird = true;
                              }
                            });
                          },
                          icon: (pp.showGird
                              ? Icon(Icons.grid_on)
                              : Icon(Icons.list))),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: pp.showGird
                    ? Center(
                        child: Container(
                          width: 1000,
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            scrollDirection: Axis.vertical,
                            children: [
                              ...pp.list.map((e) {
                                return Container(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  height: 50,
                                  child: Card(
                                    elevation: 10,
                                    shadowColor: Colors.grey,
                                    margin: EdgeInsets.all(5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              50,
                                          height: 100,
                                          child: GestureDetector(
                                            onTap: (() => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        detail(dm: [e])))),
                                            child: Image.network(
                                                e.image.toString()),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      e.image.toString()),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Container(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(e.title.toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 10, top: 10, bottom: 10),
                                            child: Text(
                                              "\$" + e.price.toString(),
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ]),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(left: 3),
                                              child: Icon(
                                                Icons.star_rate,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 3),
                                              child: Icon(
                                                Icons.star_rate,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 3),
                                              child: Icon(
                                                Icons.star_rate,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 3),
                                              child: Icon(
                                                Icons.star_rate,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 3),
                                              child: Icon(
                                                Icons.star_half,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(top: 3),
                                              child: Text("Đã bán 100",
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(left: 3),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 15,
                                                  ),
                                                  Text("Hà Nội",
                                                      style: TextStyle(
                                                          fontSize: 10)),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    top: 10,
                                                    right: 5,
                                                    bottom: 3),
                                                // decoration: BoxDecoration(color: Colors.green),
                                                child: IconButton(
                                                    onPressed: () {
                                                      // pp.getlistcart(e);

                                                      getmodel(pcd, e, x);
                                                      sl++;
                                                      setState(() {
                                                        sl;
                                                      });

                                                      // Navigator.push(
                                                      //     context,
                                                      //     MaterialPageRoute(
                                                      //         builder:
                                                      //             (context) =>
                                                      //                 paycart(
                                                      //                   dm1: [
                                                      //                     e
                                                      //                   ],
                                                      //                 )));
                                                    },
                                                    icon: Icon(
                                                      Icons.shopping_cart,
                                                      size: 20,
                                                    )))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }).toList()
                            ],
                          ),
                        ),
                      )
                    : listview(),
              )
            ],
          ),
        )));
  }

  AppBar buildappbar() {
    var pp = Provider.of<ProductProvider>(context);
    List<Productmodel> dm1 = [];
    List<Productmodel> dm2 = [];
    int count = 0;

    return AppBar(
      backgroundColor: Colors.blue[200],
      elevation: 0,
      flexibleSpace: Row(children: [
        Container(
          child: IconButton(
            icon: Icon(Icons.arrow_back_rounded, color: Colors.black),
            onPressed: () {},
          ),
        ),
        Container(
            color: Colors.white,
            width: 610,
            height: 40,
            margin: EdgeInsets.only(left: 20, bottom: 10, top: 10),
            child: TextFormField(
                onChanged: (search) {
                  dm1 = pp.list;
                  dm2 = pp.list;
                  // // pp.list3 = pp.list;
                  // dm1.map((item) {
                  //   dm1.removeWhere((item) => item.id.toString() != search);
                  //   setState(() {
                  //     pp.list = dm1;
                  //   });
                  // }).toList();
                  if (search != '') {
                    // dm1 = dm1
                    //     .where((element) => element.category!
                    //         .toLowerCase()
                    //         .contains(search.toLowerCase()))
                    //     .toList();
                    pp.list = List.from(pp.tam);
                    dm1 = List.from(pp.list);
                    dm1 = gettitle(dm1, search);
                    setState(() {
                      pp.list = dm1;
                    });
                  } else {
                    setState(() {
                      pp.list = pp.list;
                    });
                  }
                },
                controller: search,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)),
                  label: Text("search information"),
                  // hintText: "Nhập thông tin cần tìm kiếm")),
                )))
      ]),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              search!.clear();
              setState(() {
                pp.list;
              });
            },
            child: Icon(
              Icons.close,
              color: Colors.red,
            )),
        IconButton(
          icon: Icon(
            Icons.search_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            // dm1 = pp.list;

            // pp.list.removeWhere((item) => item.category.toString() != search);

            // setState(() {
            //   pp.list = dm1;
            // });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text("${sl}"),
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {});
            pp.pcd = pcd;
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => paycart()));
          },
        )
      ],
    );
  }

  // void get1(List<Productmodel> dm, Productmodel pd, int x) {
  //   dm.add(pd);
  //   for (int i = 0; i < dm.length; i++) {
  //     if (dm[i].id == dm[i].id) {
  //       x = getsl(x);
  //     } else {
  //       x = 0;
  //       getsl(x);
  //     }
  //   }
  // }
  void getmodel(List<Paycardmodel> pcd, Productmodel pd, num x) {
    for (int i = 0; i < pcd.length; i++) {
      if (pcd[i].pm!.id == pd.id) {
        pcd[i].sl = pcd[i].sl! + 1;
        return;
      }
    }
    Paycardmodel dm = Paycardmodel(pm: pd, sl: 1);
    pcd.add(dm);
  }

  void getsl(int sl) {
    sl = 0;
    sl++;
  }

  List<Productmodel> getcategory(List<Productmodel> ct, String pd) {
    // ct.map((e) {
    //   ct.removeWhere((element) => element.category.toString() != pd);
    // }).toList();
    for (int i = 0; i < ct.length; i++) {
      if (!ct[i].category!.contains(pd)) {
        ct.removeAt(i);
        i--;
      }
    }
    return ct;
  }

  List<Productmodel> gettitle(List<Productmodel> ct, String pd) {
    for (int i = 0; i < ct.length; i++) {
      if (!ct[i].title!.toLowerCase().contains(pd.toLowerCase())) {
        ct.removeAt(i);
        i--;
      }
    }
    return ct;
  }
}
