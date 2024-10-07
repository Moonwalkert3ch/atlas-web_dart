// recursive function to compute the factorial of a positive integer

int fact(int f) {
  // If f == 1 the function return 1
  if (f <= 0) {
    return 1;
    // If f <= 0 return 1
  } else if (f == 1) {
    return 1;
  } else {
    return (f * fact(f - 1));
    // function invokes itself
  }
}