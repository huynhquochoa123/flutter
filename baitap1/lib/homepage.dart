import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String src =
      "https://images.unsplash.com/photo-1659853376683-28cd63ad88c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application- G4"),
        titleTextStyle: TextStyle(color: Colors.orange, fontSize: 30),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Xin chao",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                )),
            Text("chao mung den voi nhom 4"),
            Image.network(src),
            Image.asset("assets/images/anh2.jpg"),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                ),
                Text("200 ratings", style: TextStyle(fontSize: 20)),
              ],
            )
          ],
        ),
      )),
    );
  }
}
