import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  Password user_password; // Propiedad para manejar la contraseña del usuario

  // Constructor con parámetros nombrados para inicializar las propiedades de la instancia
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : this.user_password = Password(password: user_password); // Inicializar la propiedad user_password

  // Método que retorna la representación en mapa de la instancia de User
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password.password, // Incluye la contraseña en la representación JSON
    };
  }

  // Método estático fromJson que acepta un Map como parámetro y retorna una instancia de User
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'].toDouble(),
      user_password: userJson['user_password'] ?? "", // Uso del operador de fusión nula
    );
  }

  // Método toString sobreescrito para devolver una representación en cadena de la instancia de User
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${user_password.isValid()})';
  }
}
