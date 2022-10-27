import 'package:baitap1/onhover.dart';
import 'package:flutter/material.dart';
import 'package:baitap1/CART-SHOP/productlist_page.dart';

class show extends StatelessWidget {
  const show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OnHover(Builder: ((isHovered) {
          final color = isHovered ? Colors.orange : Colors.redAccent;
          return PhysicalModel(
              color: Colors.white,
              elevation: isHovered ? 16 : 0,
              child: ProductListPage());
        })),
      ),
    );
  }
}
