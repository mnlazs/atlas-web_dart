void outer(String name, String id) {
  String inner() {
    List<String> parts = name.split(' ');
    String firstNameInitial = parts[0][0]; // Obtiene la inicial del primer nombre
    String lastName = parts[1]; // Obtiene el apellido completo

    return "Hello Agent $firstNameInitial.$lastName your id is $id";
  }

  print(inner());
}

void main() {
  outer("Youssef Belhadj", "001");
}
