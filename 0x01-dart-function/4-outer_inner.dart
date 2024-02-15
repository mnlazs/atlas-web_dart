void outer(String name, String id) {
  // Función interna 'inner' definida dentro de 'outer'
  String inner() {
    // Supongamos que queremos retornar el nombre y el id en un formato específico
    // Dado que 'name' consta de dos palabras, las separamos y luego las usamos
    List<String> nameParts = name.split(' ');
    // Retornamos un mensaje que incluye el nombre y el id, asumiendo un formato específico
    return 'Name: ${nameParts[0]} ${nameParts[1]}, ID: $id';
  }

  // Llama a la función 'inner' y imprime su resultado
  print(inner());
}

void main() {
  // Ejemplo de uso de la función 'outer'
  outer("John Doe", "12345");
  // Esto imprimirá: Name: John Doe, ID: 12345
}
