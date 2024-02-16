double calculateArea(double height, double base) {
  double area = (base * height) / 2;
  // Redondea el área a dos decimales
  return double.parse(area.toStringAsFixed(2));
}
