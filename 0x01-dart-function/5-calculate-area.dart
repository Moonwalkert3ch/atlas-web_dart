// Create a function calculateArea() that accepts two variables height and base and returns the area of the triangle.

double calculateArea(double height, double base) {
  // calculates area of the triangle
  double area = 0.5 * height * base;
  // returns a double value representing the area of the triangle
  return double.parse(area.toStringAsFixed(2));
}