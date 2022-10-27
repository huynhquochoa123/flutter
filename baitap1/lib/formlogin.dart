import 'package:baitap1/CART-SHOP/appbar1.dart';
import 'package:baitap1/register.dart';
import 'package:baitap1/trangclassroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class formlogin1 extends StatefulWidget {
  const formlogin1({super.key});
  formlogin createState() => formlogin();
}

class formlogin extends State<formlogin1> {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  String user = "hoa";
  String password = "123";
  bool _passwordVisible = false;
  var _formKey = GlobalKey<FormState>();
  String src = "assets/images/NPC.jpg";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.network(src),
                        ],
                      ),
                      Column(children: [
                        Container(
                          width: 500,
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: userNameController,
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              label: Text("Tên đăng nhập"),
                              hintText: "vui lòng nhập tên đăng nhập",
                              prefixIcon: Icon(Icons.person),
                            ),
                            validator: (str) {
                              if (str == null || str.isEmpty)
                                return "Tên đăng nhập không được rỗng";
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: 500,
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                label: Text("Mật khẩu"),
                                hintText: "vui lòng nhập mật khẩu",
                                prefixIcon: IconButton(
                                    icon: Icon(_passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    })),
                            validator: (str) {
                              if (str == null || str.isEmpty)
                                return "Mật khẩu không được rỗng";
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: 500,
                          height: 70,
                          padding: EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            child: Text(
                              "Đăng Nhập",
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              textStyle: TextStyle(fontSize: 15),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                //nếu thằng này khác null thì mơi gọi validate ngược lại ko làm

                                var userName = userNameController.text;
                                var password1 = passwordController.text;
                                if (userName == user && password1 == password) {
                                  print("xin chào:${userName}");
                                  print("xin chào:${password}");
                                  Future.delayed(const Duration(seconds: 100));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => trangtinchi()),
                                  );
                                }
                              }
                            },
                          ),
                        ),
                        Container(
                            width: 500,
                            height: 70,
                            padding: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              child: Text(
                                "Đăng ký",
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                textStyle: TextStyle(fontSize: 15),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => formregister1()),
                                );
                                if (_formKey.currentState!.validate()) {
                                  //nếu thằng này khác null thì mơi gọi validate ngược lại ko làm
                                  var userName = userNameController.text;
                                  var password = passwordController.text;
                                  print("xin chào:${userName}");
                                  print("xin chào:${password}");
                                } else {
                                  print("Dữ liệu không chính xác");
                                }
                              },
                            ))
                      ]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
