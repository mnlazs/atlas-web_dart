import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Obtén los datos del usuario
    final String userDataJson = await fetchUserData();
    final Map<String, dynamic> userData = json.decode(userDataJson);
    final String userId = userData['id'];

    // Obtén los pedidos del usuario
    final String userOrdersJson = await fetchUserOrders(userId);
    final List<dynamic> userOrders = json.decode(userOrdersJson);

    double totalPrice = 0;

    // Calcula el precio total iterando sobre los pedidos del usuario
    for (String product in userOrders) {
      final String productPriceJson = await fetchProductPrice(product);
      final double productPrice = json.decode(productPriceJson);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    // Manejo de errores retornando -1 en caso de error
    return -1;
  }
}

void main() async {
  final double total = await calculateTotal();
  print(total);
}
