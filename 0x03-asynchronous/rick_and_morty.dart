import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // URL de la API de Rick y Morty
    final url = Uri.parse('https://rickandmortyapi.com/api/character');
    
    // Realiza una solicitud GET a la API
    final response = await http.get(url);
    
    // Verifica si la solicitud fue exitosa
    if (response.statusCode == 200) {
      // Convierte la respuesta en un mapa de Dart
      final data = json.decode(response.body);
      
      // Accede a la lista de personajes
      final characters = data['results'];
      
      // Itera sobre la lista de personajes y los imprime
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // Maneja el caso de una respuesta no exitosa
      print('Failed to load characters');
    }
  } catch (e) {
    // Maneja cualquier error que ocurra durante la solicitud o el procesamiento de la respuesta
    print('Error caught: $e');
  }
}
