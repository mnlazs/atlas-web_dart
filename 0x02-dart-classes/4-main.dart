import '4-mutables.dart';

void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid()); // Debería imprimir `false` si "Passwordecode" no cumple con los requisitos
  print(password.toString()); // Imprime "Your Password is: Passwordecode"
  
  password.password = "Youssef4321";
  print(password.isValid()); // Debería imprimir `true` si "Youssef4321" cumple con los requisitos
  print(password.toString()); // Imprime "Your Password is: Youssef4321"
}
