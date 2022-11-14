import 'package:get/get.dart';

import '../cart/cart_list_model.dart';
import '../model/data_model.dart';

class CartController extends GetxController {
  var numOfItem = 1.obs;
  var total = 0.obs;
  var totalAmount = 0.obs;

  var cartItems = <CartListModel>[].obs;
  void removeItem() {
    if (numOfItem.value >= 0) {
      numOfItem.value--;
    }
  }

  void addItem() {
    numOfItem.value++;
  }
//ignore: must_be_immutable
  void addItemInCart(Data? product) {
    //cartItems.add(product);
    final index = cartItems.indexWhere((element) => element.product == product);
    if (index > 0) {
      cartItems[index] = CartListModel(
          product: product,
          quantity: numOfItem.value + cartItems[index].quantity);
    } else {
      cartItems.add(CartListModel(product: product, quantity: numOfItem.value));
    }
    total.value = total.value + numOfItem.value;
    numOfItem.value = 1;
  }

  void initQuantity() {
    numOfItem.value = 1;
  }
}
