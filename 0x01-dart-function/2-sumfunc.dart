// accepts two arguments a, b and return the sum.
int add(int a, int b) {
  return (a + b);
}


// accepts two arguments a, b and return Subtraction of them.
int sub(int a, int b) {
  return(a - b);
}

//  returns a message with the output of the two other function.
String showFunc(int a, int b) {
  // define functions
  int addResult = add(a,b);
  int subResult = sub(a,b);
  // returned function
  return('Add $a + $b = $addResult\nSub $a - $b = $subResult');
}
