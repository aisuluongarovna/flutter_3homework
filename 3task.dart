// [Task 3]
// Дано натуральное число n (n 9999). Выяснить, является ли оно палиндромом
// ("перевертышем") с учетом четырех цифр, как, например, числа 7777, 8338,
// 0330 и т. п. (Палиндромом называется число, десятичная запись которого чи-
// тается одинаково слева направо и справа налево.)

import 'dart:io';

void main() {
  stdout.write('write any number: ');
  int n = int.parse(stdin.readLineSync()!);
  int reversed = 0;
  int temp = n;
  int digit1 = temp ~/ 1000;
  if (digit1 != 0) {
    reversed += digit1;
    temp %= 1000;
  }

  int digit2 = temp ~/ 100;
  if (digit2 != 0) {
    reversed += digit2 * 10;
    temp %= 100;
  }

  int digit3 = temp ~/ 10;
  if (digit3 != 0) {
    reversed += digit3 * 100;
    temp %= 10;
  }

  int digit4 = temp % 10;
  if (digit4 != 0) {
    reversed += digit4 * 1000;
  }

  if (n == reversed) {
    print('$n - палиндром');
  } else {
    print('$n - не палиндром');
  }
}
