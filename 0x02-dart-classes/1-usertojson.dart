class User {
  // properties
  String name;
  int age;
  double height;

  // constructor
  User({
    required this.name,
    required this.age,
    required this.height,
  });

  // map representation of the user
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}