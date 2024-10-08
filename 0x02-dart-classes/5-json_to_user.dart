class User {
  // properties
  String name;
  int age, id;
  double height;

  // constructor
  User({required this.id, required this.name, required this.age, required this.height});

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
    );
  }

  // override toString()
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }

}