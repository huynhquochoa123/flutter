import 'package:baitap1/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class pd1 extends StatelessWidget {
  pd1({super.key});
  List<String> btn = ["Buy Now"];
  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getList();
    }
    return Scaffold(
        body: Center(
      child: Container(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          scrollDirection: Axis.vertical,
          children: [
            ...pp.list.map((e) {
              return Card(
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
                      width: MediaQuery.of(context).size.width - 50,
                      height: 100,
                      child: Image.network(e.image.toString()),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e.image.toString()),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   margin: EdgeInsets.all(3),
                        //   child: Text("Id: " + e.id.toString()),
                        // ),
                        Center(
                          child: Container(
                            // width: MediaQuery.of(context).size.width - 100,
                            height: 20,
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.all(5),
                            child: Text(e.title.toString(),
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.all(3),
                        //   child: Text("Category: " + e.category.toString()),
                        // ),
                      ],
                    ),
                    Row(children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                        child: Text(
                          "đ" + e.price.toString() + "00",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                      ),
                    ]),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(3),
                          padding: EdgeInsets.only(left: 3),
                          child: Icon(
                            Icons.star_rate,
                            color: Colors.red,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          padding: EdgeInsets.only(left: 3),
                          child: Icon(
                            Icons.star_rate,
                            color: Colors.red,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          padding: EdgeInsets.only(left: 3),
                          child: Icon(
                            Icons.star_rate,
                            color: Colors.red,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          padding: EdgeInsets.only(left: 3),
                          child: Icon(
                            Icons.star_rate,
                            color: Colors.red,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
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
                              style: TextStyle(fontSize: 12)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(left: 3, top: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 15,
                              ),
                              Text("Hà Nội", style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 5, bottom: 3),
                          // decoration: BoxDecoration(color: Colors.green),
                          child: TextButton(
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.focused))
                                  return Colors.red;
                                return null; // Defer to the widget's default.
                              }),
                            ),
                            onPressed: () {
                              color:
                              Colors.blue;
                            },
                            child: Text(
                              'Buy now',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
              // Text(e.title ?? "");
            }).toList()
          ],
        ),
      ),
    ));
  }
}
