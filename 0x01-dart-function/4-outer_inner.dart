void outer(String name, String id) {
  // Función interna 'inner' definida dentro de 'outer'
  String inner() {
    List<String> nameParts = name.split(' ');
    return 'Name: ${nameParts[0]} ${nameParts[1]}, ID: $id';
  }
  print(inner());
}

void main() {
  outer("Youssef Belhadj", "001");
}
