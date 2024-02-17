class Password {
  String _password;

  Password({String password = ""}) : _password = password;

  // Getter para _password
  String get password => _password;

  // Setter para _password
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) return false;
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigit = _password.contains(RegExp(r'\d'));
    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
