import '4-utils.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // Obtén los datos del usuario.
    final userDataJson = await fetchUserData();
    final userData = json.decode(userDataJson);
    final userId = userData['id'];

    // Obtén las órdenes del usuario utilizando el ID.
    final userOrdersJson = await fetchUserOrders(userId);
    final userOrders = json.decode(userOrdersJson);
    
    double totalPrice = 0.0;
    
    // Itera sobre las órdenes del usuario para obtener los precios de los productos.
    for (String product in userOrders) {
      final productPriceJson = await fetchProductPrice(product);
      final productPrice = json.decode(productPriceJson);
      totalPrice += productPrice;
    }

    // Retorna el precio total de los artículos.
    return totalPrice;
  } catch (error) {
    // Si ocurre un error, retorna -1.
    return -1.0;
  }
}
