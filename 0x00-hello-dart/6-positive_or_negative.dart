void main(List<String> args) {
  int x = int.parse(args[0]);
  switch (x) {
    case > 0:
    print('${x} is positive');

    case == 0:
    print('${x} is zero');

    case < 0: 
    print('${x} is negative');
  }
}