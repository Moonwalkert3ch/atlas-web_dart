void main(List<String> args) {
  int x = int.parse(args[0]);
  assert(x >= 80, 'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');
  print('You Passed');
}