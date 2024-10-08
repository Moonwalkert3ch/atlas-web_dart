import 'dart:convert'; // parses json
import '1-util.dart';

Future<String> getUserId() async{
  // fetch user data
  String userData = await fetchUserData();

  // parse json string
  Map<String, dynamic> userMap = jsonDecode(userData);

  return userMap['id'];
}