import '2-util.dart';

Future<void> getUser() async {
  try {
    // try to fetch user data
    String user = await fetchUser();
    print(user);
  } catch (error) {
    // handle error
    print("error caught: $error");
  }
}