import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  Password _userPassword; // Propiedad privada para manejar la contraseña del usuario.

  // Constructor con parámetros nombrados para inicializar las propiedades de la instancia.
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : _userPassword = Password(password: user_password); // Inicializa la propiedad _userPassword.

  // Setter para actualizar la contraseña del usuario, acepta un String y actualiza _userPassword.
  set user_password(String newPassword) {
    _userPassword = Password(password: newPassword);
  }

  // Método para determinar si la contraseña es válida.
  bool get isPasswordValid => _userPassword.isValid();

  // Método que retorna la representación en mapa de la instancia de User, sin incluir la contraseña.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      // La contraseña no se incluye en la representación JSON.
    };
  }

  // Método estático fromJson que acepta un Map como parámetro y retorna una instancia de User.
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'].toDouble(),
      user_password: userJson['user_password'] ?? "",
    );
  }

  // Método toString sobreescrito para devolver una representación en cadena de la instancia de User.
  @override
  String toString() {
    // Asegúrate de incluir espacios adecuados para coincidir con el resultado esperado.
    return 'User(id : $id, name: $name, age: $age, height: $height, Password: ${isPasswordValid})';
  }
}
