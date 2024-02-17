class Password {
  String password = "";

  bool isValid() {
    // Verifica la longitud
    if (password.length < 8 || password.length > 16) return false;

    // Verifica la presencia de mayúsculas, minúsculas y números
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasDigit = password.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    // Personaliza la representación de la clase como una cadena de texto
    return 'Your Password is: $password';
  }
}
