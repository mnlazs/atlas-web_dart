class User {
  int id;
  String name;
  int age;
  double height;

  // Constructor con parámetros nombrados para inicializar las propiedades de la instancia
  User({required this.id, required this.name, required this.age, required this.height});

  // Método que retorna la representación en mapa de la instancia de User
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Método estático fromJson que acepta un Map como parámetro y retorna una instancia de User
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'].toDouble(),
    );
  }

  // Método toString sobreescrito para devolver una representación en cadena de la instancia de User
  @override
  String toString() {
    // Añade un espacio antes de cada coma
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}
