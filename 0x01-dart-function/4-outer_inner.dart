// two functions the first function take two argument and print the output of the inside function

void outer(String name, String id) {
  String inner() {
    // splits the name into a first and last name
    List<String> nameFormat = name.split(' ');
    String firstName = nameFormat[0];
    String lastName = nameFormat[1];

    var message = "Hello Agent B.$firstName $lastName your id is $id";
    return message;
  }
  print(inner());
}