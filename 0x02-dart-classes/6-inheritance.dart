import '6-password.dart';

class User extends Password {
  String name;
  int age, id;
  double height;
  String? user_password;

  // constructor
  User({required this.id, required this.name, required this.age, required this.height, required String user_password}) : super(password: user_password) {
    this.user_password = user_password;
  }

  // map representation of the user
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'] ?? '',
    );
  }

  // override toString()
  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }

}