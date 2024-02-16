void outer(String name, String id) {
  String inner() {
    // Separa el nombre en palabras para obtener el primer nombre y el apellido
    List<String> parts = name.split(' ');
    String firstName = parts[0];
    String lastName = parts[1];
    String lastNameInitial = lastName[0]; // Obtiene la inicial del apellido

    // Construye y retorna el mensaje utilizando la inicial del apellido seguido del nombre completo
    return "Hello Agent $lastNameInitial.$firstName your id is $id";
  }

  // Imprime el resultado de llamar a la función 'inner'
  print(inner());
}

