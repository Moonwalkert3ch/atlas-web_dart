import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = 'https://rickandmortyapi.com/api/character';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // parse response
      final data = jsonDecode(response.body);
      final characters = data['results'];

      // prints each characters name
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // debugging
      print('${response.statusCode}');
    }
  } catch (error) {
    print('error caught: $error');
  }
}