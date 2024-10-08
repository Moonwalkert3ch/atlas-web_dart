import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    // parse username
    var user = userData.split('"username" : "')[1].split('"')[0];
    return 'Hello $user';
  } catch (error) {
    // handle error
    return 'error caught: $error';
  }
}

// Create a function loginUser()
Future<String> loginUser() async {
  try {
    // check credential
    bool isValid = await checkCredentials();

    if (isValid) {
      print('There is a user: true');
      return await greetUser();
    } else {
      // invalid credentials
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    // handle errors
    return 'error caught: $error';
  }
}