// [Task 2]
// Дано трехзначное число. Определить:
// а) входят ли в него цифры 4 или 7;
// б) входят ли в него цифры 3, 6 или 9.
// в) входит ли в него цифра n.
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  stdout.write('write number ');

  int digit1 = number ~/ 100;
  int digit2 = (number ~/ 10) % 10;
  int digit3 = number % 10;

  // а) 4 или 7
  bool hasFourOrSeven = (digit1 == 4 || digit2 == 4 || digit3 == 4) ||
      (digit1 == 7 || digit2 == 7 || digit3 == 7);
  print('а) Цифры 4 или 7 входят в число: $hasFourOrSeven');

  // б) 3, 6 или 9
  bool hasThreeSixNine = (digit1 == 3 || digit2 == 3 || digit3 == 3) ||
      (digit1 == 6 || digit2 == 6 || digit3 == 6) ||
      (digit1 == 9 || digit2 == 9 || digit3 == 9);
  print('б) Цифры 3, 6 или 9 входят в число: $hasThreeSixNine');

  // в)  n
  stdout.write('Введите цифру n: ');
  int n = int.parse(stdin.readLineSync()!);

  bool hasN = (digit1 == n || digit2 == n || digit3 == n);
  print('в) Цифра $n входит в число: $hasN');
}
