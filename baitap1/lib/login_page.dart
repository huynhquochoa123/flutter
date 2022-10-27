import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  var userNameController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("Đăng nhập hệ thống"),
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    label: Text("tên đăng nhập"),
                    hintText: "vui lòng nhập tên đăng nhập",
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (str) {
                    if (str == null || str.isEmpty)
                      return "Tên đăng nhập không được rỗng";
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //nếu thằng này khác null thì mơi gọi validate ngược lại ko làm
                        var userName = userNameController.text;
                        print("xin chào:${userName}");
                      } else {
                        print("Dữ liệu không chính xác");
                      }
                    },
                    child: Text("Đăng nhập",
                        style: TextStyle(fontSize: 20, color: Colors.white)))
              ],
            )),
      ),
    );
  }
}
