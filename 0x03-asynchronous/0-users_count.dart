// Si necesitas importar 0-util.dart, la línea sería similar a:
import '0-util.dart';

Future<void> usersCount() async {
  // Llama a fetchUsersCount() y espera su resultado antes de continuar.
  int count = await fetchUsersCount();
  
  // Imprime el número de usuarios obtenido.
  print(count);
}
