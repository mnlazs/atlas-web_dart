// Importa las funciones necesarias de otro archivo si es necesario
import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    // Simula la obtención de datos del usuario
    final String userDataJson = await fetchUserData();
    // Convierte la cadena JSON en un objeto Dart (p.ej., un Map)
    final Map<String, dynamic> userData = json.decode(userDataJson);
    // Retorna el saludo con el nombre de usuario obtenido
    return 'Hello ${userData['username']}';
  } catch (error) {
    // Manejo de errores
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    // Verifica las credenciales del usuario
    final bool hasUser = await checkCredentials();
    // Imprime y maneja el resultado de la verificación
    print('There is a user: $hasUser');
    if (hasUser) {
      // Llama a greetUser y retorna su valor si las credenciales son correctas
      return await greetUser();
    } else {
      // Retorna un mensaje de error si las credenciales son incorrectas
      return 'Wrong credentials';
    }
  } catch (error) {
    // Manejo de errores
    return 'error caught: $error';
  }
}
