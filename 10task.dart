// Дана непустая последовательность целых чисел, оканчивающаяся нулем.
// Найти:
// а) сумму всех чисел последовательности, больших числа x;
// б) количество всех четных чисел последовательности

import 'dart:io';

void main() {
  int x = 3;
  int sumGreaterThanX = 0;
  int evenCount = 0;

  int num;
  do {
    stdout.write('Number: ');
    num = int.parse(stdin.readLineSync()!);

    if (num > x) {
      sumGreaterThanX += num;
    }

    if (num.isEven) {
      evenCount++;
    }
  } while (num != 0);

  print('Сумма чисел больше $x: $sumGreaterThanX');
  print('Количество четных чисел: $evenCount');
}
