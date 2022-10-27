import 'dart:math';

import 'package:baitap1/hocphan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:baitap1/hocphan.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:baitap1/slidable.dart';
import 'package:baitap1/popupmenu.dart';

class trangtinchi extends StatelessWidget {
  trangtinchi({super.key});

  List<hocphan> listView = [
    hocphan(
        "[2021-2022]-Lập Trình Phân Tán - Nhóm 3",
        "2021-2022.2.TIN3142.003",
        "7 học viên",
        "assets/images/anhclassroom1.jpg"),
    hocphan("[2021-2022]-Đồ Hoạ Máy Tính - Nhóm 1", "2021-2022.2.TIN3142.001",
        "12 học viên", "assets/images/anhclassroom2.jpg"),
    hocphan(
        "[2021-2022]-Thực tập viết niên luận - Nhóm 2",
        "2021-2022.2.TIN3142.002",
        "21 học viên",
        "assets/images/anhclassroom3.jpg"),
    hocphan(
        "[2021-2022]-Lập trình ứng dụng thiết bị di động - Nhóm 3",
        "2021-2022.2.TIN3142.003",
        "32 học viên",
        "assets/images/anhclassroom4.jpg"),
    hocphan("[2021-2022]-Java nâng cao - Nhóm 3", "2021-2022.2.TIN3142.003",
        "10 học viên", "assets/images/anhclassroom2.jpg")
  ];
  List<String> popmenu1 = ["Thêm", "xoá"];
  List<String> popmenu2 = ["làm mới", "gửi phản hồi cho google"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        //   Text("Google Lớp học",
        // style: TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.w200,
        //     color: Colors.black,
        //     decoration: TextDecoration.none)),
        //   Icon(Icons.more_vert, size: 20, color: Colors.black)
        title: Center(
          child: Text(
            "Google Lớp học",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      // Icon(Icons.more_vert, size: 20, color: Colors.black)),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: 1000,
            width: 2000,
            child: Column(children: [
              ...listView.map((e) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: Container(
                        margin: EdgeInsets.all(3), child: const DrawerMotion()),
                    children: [
                      SlidableAction(
                          icon: Icons.info,
                          backgroundColor: Colors.blue,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          onPressed: (context) => {}
                          // onDismissed(indext, SlidableAction1.delete)
                          ),
                      SlidableAction(
                          icon: Icons.update,
                          backgroundColor: Colors.green,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          onPressed: (context) => {}),
                      SlidableAction(
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          onPressed: (context) => {}),
                    ],
                  ),

                  // startActionPane: ActionPane(
                  //   motion: const BehindMotion(),
                  //   children: [
                  //     SlidableAction(
                  //         icon: Icons.more,
                  //         backgroundColor: Colors.blue,
                  //         onPressed: (context) => {}),
                  //     SlidableAction(
                  //         icon: Icons.update,
                  //         backgroundColor: Colors.green,
                  //         onPressed: (context) => {}),
                  //     SlidableAction(
                  //         icon: Icons.delete,
                  //         backgroundColor: Colors.red,
                  //         onPressed: (context) => {})
                  //   ],
                  // ),

                  child: Container(
                      margin: EdgeInsets.all(3),
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e.anh), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 400,
                                      child: Text(e.tenmon,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w200,
                                              color: Colors.white,
                                              decoration: TextDecoration.none)),
                                    ),
                                    PopupMenuButton(
                                      icon: Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                      onSelected: (value) {
                                        if (value == "xoa") {
                                          // Get.changeTheme(ThemeData.dark());
                                        } else {
                                          // Get.changeTheme(ThemeData.light());
                                        }
                                      },
                                      itemBuilder: (context) {
                                        return popmenu1
                                            .map((e) => PopupMenuItem(
                                                value: e,
                                                child: Text(
                                                  e,
                                                  style: TextStyle(
                                                    fontFamily: "Style2",
                                                  ),
                                                )))
                                            .toList();
                                      },
                                    )

                                    // //
                                    // action:[
                                    //   PopupMenuButton(
                                    //     onSelected: (String value) {
                                    //       setState(() {
                                    //         _selectedValue = value;
                                    //       });
                                    //     },
                                    //     itemBuilder: (BuildContext ctx) => [
                                    //           const PopupMenuItem(value: '1', child: Text('Option 1')),
                                    //           const PopupMenuItem(value: '2', child: Text('Option 2')),
                                    //           const PopupMenuItem(value: '3', child: Text('Option 3')),
                                    //           const PopupMenuItem(value: '4', child: Text('Option 4')),
                                    //     ])
                                    // ]
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(e.mamon,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      decoration: TextDecoration.none)),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 30),
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(e.hocvien,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none))),
                          ])),
                );
              }).toList()
            ]),
          )),
    );
  }
}
