import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    //fetch user data
    Map userData = jsonDecode(await fetchUserData());
    String userId = userData["id"];

    // fetch orders
    List<dynamic> userOrders = jsonDecode(await fetchUserOrders(userId));

    // calculates total price of items for user
    double totalPrice = 0.0;

    for (var product in userOrders) {
      String productPriceData = await fetchProductPrice(product);
      // decode string
      double productPrice = double.parse(productPriceData);

      // adds produce price to total
      totalPrice += productPrice;
    }
    return totalPrice;
  } catch (error) {
    return -1;
  }
}