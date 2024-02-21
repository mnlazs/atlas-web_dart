import '6-password.dart';

class User extends Password {
  // initialize properties
  String name = '';
  int age = 0;
  double height = 0.0;
  int id = 0;
  
  // constructor
  User({required this.name, 
        required this.age, 
        required this.height, 
        required this.id,
        String user_password = '',
    }) : super(password: user_password); // initialize password with new instance of Password class

    // getter method to access password validation status
    bool get isPasswordValid => isValid();
    String get user_password => this.password;
    set user_password(String newPassword) => this.password = newPassword;
  
  // method to convert to JSON
  Map<String, dynamic> toJson() {
      Map<String, dynamic> jsonMap = {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
      };
      return jsonMap;
    }
  

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }


  // override toString method
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isPasswordValid})';
  }
}
