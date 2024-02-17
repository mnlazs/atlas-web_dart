class Password {
  String _password;

  // Constructor con argumentos nombrados para inicializar _password
  Password({String password = ""}) : _password = password;

  bool isValid() {
    // Verifica la longitud
    if (_password.length < 8 || _password.length > 16) return false;

    // Verifica la presencia de mayúsculas, minúsculas y números
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigit = _password.contains(RegExp(r'\d'));

    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    // Personaliza la representación de la clase como una cadena de texto
    return 'Your Password is: $_password';
  }
}
