import 'package:baitap1/model/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  void addProduct(Productmodel product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      "product added",
      "you have added the ${product.title} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }
}
