import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}
