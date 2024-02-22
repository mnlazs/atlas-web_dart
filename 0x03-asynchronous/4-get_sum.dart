import '4-utils.dart';
import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () => '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  return Future.delayed(const Duration(seconds: 2), () => json.encode(orders[id]));
}

// Simula la obtención del precio de un producto.
Future<String> fetchProductPrice(String product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  return Future.delayed(const Duration(seconds: 2), () => products[product].toString());
}

// Calcula el precio total de los ítems para un usuario.
Future<double> calculateTotal() async {
  try {
    // Obtiene y decodifica los datos del usuario.
    final userDataJson = await fetchUserData();
    final userData = json.decode(userDataJson);
    final String userId = userData['id'];

    // Obtiene y decodifica las órdenes del usuario.
    final userOrdersJson = await fetchUserOrders(userId);
    final List<dynamic> userOrders = json.decode(userOrdersJson);

    double totalPrice = 0.0;

    // Itera sobre las órdenes para obtener los precios de los productos.
    for (String product in userOrders) {
      final String productPriceString = await fetchProductPrice(product);
      final double productPrice = double.parse(productPriceString);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    print('error caught: $error');
    return -1.0;  // Retorna -1 si ocurre un error.
  }
}

void main() async {
  print(await calculateTotal());
}
