import 'dart:convert';

import 'package:baitap1/model/paycartmodel.dart';
import 'package:baitap1/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  List<Productmodel> list = [];
  List<Productmodel> element = [];
  List<Productmodel> listTemp = [];
  List<String> list2 = [];
  List<Productmodel> listsearch = [];
  List<Productmodel> listsearch1 = [];
  var search = TextEditingController();
  List<Paycardmodel> pcd = [];
  List<Productmodel> dn = [];
  List<Productmodel> tam = [];
  bool showGird = true;

  void getList() async {
    String apiURL = "https://fakestoreapi.com/products";
    var client = http.Client();
    var rs = await client.get(Uri.parse(apiURL));
    var jsonString = rs.body; //lấy phân thân
    var jsonObject =
        jsonDecode(jsonString) as List; //mã hoá code và đưa về mảng
    list = jsonObject.map((e) {
      return Productmodel.fromJson(e);
      // trả về một cái list productmodel
    }).toList();

    element = list;
    tam = List.from(list);
    this.getCategories();
    notifyListeners();
  }

  void getCategories() async {
    this.list.map((e) {
      // if (!list2.contains(e.category.toString())) {
      //   list2.add(e.category.toString());
      // }
      list2.add(e.category.toString());
    }).toList();
    list2 = list2.toSet().toList();
  }
}
