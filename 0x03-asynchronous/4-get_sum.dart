import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Obtiene los datos del usuario.
    final String userDataJson = await fetchUserData();
    final Map<String, dynamic> userData = json.decode(userDataJson);
    final String userId = userData['id'];

    // Obtiene las órdenes del usuario.
    final String userOrdersJson = await fetchUserOrders(userId);
    final List<dynamic> userOrders = json.decode(userOrdersJson);

    double totalPrice = 0.0;

    // Itera sobre cada producto en las órdenes del usuario para obtener su precio.
    for (var product in userOrders) {
      final String productPriceJson = await fetchProductPrice(product);
      final double productPrice = json.decode(productPriceJson);
      totalPrice += productPrice;
    }

    // Retorna el precio total de los ítems.
    return totalPrice;
  } catch (error) {
    // Si ocurre un error en cualquier parte del proceso, retorna -1.
    print('error caught: $error');
    return -1.0;
  }
}

void main() async {
  final total = await calculateTotal();
  print(total);
}
