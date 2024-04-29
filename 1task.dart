// [Task 1]
// Дано двузначное число. Определить:
// а) входят ли в него цифры 4 или 7;
// б) входят ли в него цифры 3, 6 или 9.
// в) входит ли в него цифра а.
void main() {
  int number = 73;
  int a = 7;

  bool hasFourOrSeven = checkDigits(number, [4, 7]);
  print('Цифры 4 или 7 входят в число: $hasFourOrSeven');

  bool hasThreeSixNine = checkDigits(number, [3, 6, 9]);
  print('Цифры 3, 6 или 9 входят в число: $hasThreeSixNine');
  bool hasA = checkDigits(number, [a]);
  print('Цифра $a входит в число: $hasA');
}

bool checkDigits(int number, List<int> digits) {
  String numberString = number.toString();
  for (int digit in digits) {
    if (numberString.contains(digit.toString())) {
      return true;
    }
  }
  return false;
}
