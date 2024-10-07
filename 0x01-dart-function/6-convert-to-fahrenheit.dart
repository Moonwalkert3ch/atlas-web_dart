List<double> convertToF(List<double> temperaturesInC) {
  // use map method to convert each temp to F
  return temperaturesInC.map((tempInC) {
    double tempInF = (tempInC * 9 / 5) + 32;
    return double.parse(tempInF.toStringAsFixed(2));
  }).toList();
}