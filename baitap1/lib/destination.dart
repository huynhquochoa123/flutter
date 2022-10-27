import 'dart:html';
import 'package:baitap1/slider_widget.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:baitap1/hasting_widget.dart';

class DestinationPage extends StatelessWidget {
  DestinationPage({super.key});
  String content =
      "Với đường bờ biển dài hơn 3200 km, không có gì là ngạc nhiên khi Việt Nam có nhiều bãi biển đẹp cùng nhiều vịnh nhỏ với những bãi cát trắng xóa và làn nước trong xanh rất phù hợp cho những buổi ngắm bình minh, tiếp nạp “vitamin sea” hoặc ngắm cảnh hoàng hôn lúc chiều muộn, thật không có gì tuyệt vời hơn. Cùng tham khảo qua danh sách những bãi biển đẹp nhất Việt Nam để lên kế hoạch cho chuyến đi sắp tới của bạn nhé.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            // Image.asset("assets/images/hinh1.jpg"),

            SliderDestination(),
            HashTagDestination(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: const [
                      Text(
                        "bien dep nhat viet nam",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "bien dep thu 2 viet nam",
                        style: const TextStyle(
                            fontSize: 5,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [Icon(Icons.star, size: 20, color: Colors.red)],
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              //call
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.call, size: 20, color: Colors.blue),
                  ),
                  Text(
                    "CALL",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              //router
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.near_me, size: 20, color: Colors.blue),
                  ),
                  Text(
                    "ROUTER",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              //share
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.share, size: 20, color: Colors.blue),
                  ),
                  Text(
                    "SHARE",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
            blockDes(context),
          ]),
        ),
      ),
    );
  }

  blockDes(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        content,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
