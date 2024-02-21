import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  Password _userPassword; // Cambiado a una variable privada para evitar acceso directo.

  // Constructor con parámetros nombrados para inicializar las propiedades de la instancia.
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : _userPassword = Password(password: user_password); // Inicializa la propiedad _userPassword.

  // Setter para actualizar la contraseña del usuario.
  set user_password(String newPassword) {
    _userPassword = Password(password: newPassword);
  }

  // Si necesitas un getter para algún propósito específico, asegúrate de que no devuelva la contraseña directamente.
  // Por ejemplo, puedes tener un getter que devuelva si la contraseña es válida o no, pero no su valor exacto.
  bool get isPasswordValid => _userPassword.isValid();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      // Considera si realmente necesitas incluir la contraseña en la salida JSON.
      'user_password': _userPassword.password, 
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'].toDouble(),
      user_password: userJson['user_password'] ?? "",
    );
  }

  @override
  String toString() {
    return 'User(id : $id, name: $name, age: $age, height: $height, Password: ${isPasswordValid})';
  }
}
