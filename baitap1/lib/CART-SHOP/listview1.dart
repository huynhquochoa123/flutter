import 'package:baitap1/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class listview extends StatelessWidget {
  listview({super.key});

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getList();
    }
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: 1000,
              child: Column(children: [
                ...pp.list.map((e) {
                  return Column(children: [
                    Container(
                        padding: EdgeInsets.only(left: 10, top: 5, bottom: 10),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 150,
                              width: 100,
                              child: Image.network(e.image.toString()),
                            ),
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 300,
                                  child: Text(
                                    e.title.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Row(
                                  children: [
                                    // padding: EdgeInsets.only(
                                    //     left: 10, top: 10, bottom: 10),
                                    Text(
                                      "đ" + e.price.toString() + "00",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 15),
                                    ),
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
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                    width: 350,
                                    child: Text(
                                      e.description.toString(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    ))
                              ],
                            )),
                          ],
                        ))
                  ]);
                }).toList()
              ]),
            )));
  }
}
