class User {
  // Definición de propiedades
  String name;
  int age;
  double height;

  // Constructor con nombre para inicializar las propiedades de la instancia
  User({required this.name, required this.age, required this.height});

  // Método que retorna la representación en mapa de la instancia de User
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}
