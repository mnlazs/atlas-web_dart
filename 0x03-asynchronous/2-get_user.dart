import '2-util.dart'; 

Future<void> getUser() async {
  try {
    // Intenta obtener los datos del usuario.
    String userData = await fetchUser();
    // Si la operación es exitosa, imprime los datos del usuario.
    print(userData);
  } catch (error) {
    // Si ocurre un error, lo captura y lo imprime con el mensaje especificado.
    print('error caught: $error');
  }
}
