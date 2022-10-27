import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class formregister1 extends StatefulWidget {
  const formregister1({super.key});
  formregister createState() => formregister();
}

class formregister extends State<formregister1> {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordControllerreset = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  bool _password1Visible = false;
  bool _password2Visible = false;
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
                            obscureText: !_password1Visible,
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                label: Text("Mật khẩu"),
                                hintText: "vui lòng nhập mật khẩu",
                                prefixIcon: IconButton(
                                    icon: Icon(_password1Visible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _password1Visible = !_password1Visible;
                                      });
                                    })),
                            validator: (str) {
                              if (str == null || str.isEmpty)
                                return "Tên Mật khẩu không được rỗng";

                              // return null;
                            },
                          ),
                        ),
                        Container(
                          width: 500,
                          padding: EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: passwordControllerreset,
                            obscureText: !_password2Visible,
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                label: Text("Nhập lại Mật khẩu"),
                                hintText: "vui lòng nhập lại mật khẩu",
                                prefixIcon: IconButton(
                                    icon: Icon(_password2Visible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _password2Visible = !_password2Visible;
                                      });
                                    })),
                            validator: (str) {
                              var userName = userNameController.text;
                              var password = passwordController.text;
                              var password1 = passwordControllerreset.text;
                              if (str == null || str.isEmpty)
                                return "Tên mật khẩu không được rỗng";
                              else if (password != password1) {
                                return "mật khẩu không trùng khớp";
                              }
                              // return null;
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
                                if (_formKey.currentState!.validate()) {
                                  //nếu thằng này khác null thì mơi gọi validate ngược lại ko làm
                                  var userName = userNameController.text;
                                  var password = passwordController.text;
                                  var password1 = passwordControllerreset.text;

                                  Navigator.pop(context);
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

  showMyAlertDialog(BuildContext context) {
    AlertDialog dialog =
        AlertDialog(content: Text("mật khẩu không trùng khớp"));
    return dialog;
  }
}
