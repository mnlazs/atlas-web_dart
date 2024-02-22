import 'dart:convert';

Future<bool> checkCredentials() => 
    Future.delayed(const Duration(seconds: 2), () => true);

Future<String> loginUser() async {
  try {
    bool isUserValid = await checkCredentials();
    print('There is a user: $isUserValid');
    if (isUserValid) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}


Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () => '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );


Future<String> greetUser() async {
  try {
    String userDataJson = await fetchUserData();
    Map<String, dynamic> userData = json.decode(userDataJson);
    return 'Hello ${userData['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}
