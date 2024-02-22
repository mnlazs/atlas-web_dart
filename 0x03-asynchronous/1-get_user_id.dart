import 'dart:convert'; // Para usar json.decode
import '1-util.dart';

Future<String> getUserId() async {
  // Llama a fetchUserData y espera el resultado
  String userDataJson = await fetchUserData();
  
  // Decodifica el JSON para convertirlo en un mapa
  Map<String, dynamic> userData = json.decode(userDataJson);
  
  // Extrae y retorna el ID del usuario
  return userData['id'];
}
