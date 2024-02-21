class Password {
  // initialize properties
  String _password = '';

  // getter and setter for password
  String get password => _password;
  set password(String value) => _password = value;

  // private constructor to set the initial value of _password
  Password({required String password}) : _password = password;

  // method to check if the password is valid
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) return false;

    // check if it contains uppercase and lowercase letters
    if (!RegExp(r'[a-z]').hasMatch(_password) ||
        !RegExp(r'[A-Z]').hasMatch(_password)) return false;

    // check if it contains numbers
    if (!RegExp(r'[0-9]').hasMatch(_password)) return false;

    return true;
  }

  // override toString() method
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
