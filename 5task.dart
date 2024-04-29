// [Task 5]
//  Определить, является ли заданное шестизначное число счастливым. (Счаст-
// ливым называют такое шестизначное число, что сумма его первых трех цифр
// равна сумме его последних трех цифр.)

import 'dart:io';

void main() {
  stdout.write('Enter a six-digit number: ');
  int number = int.parse(stdin.readLineSync()!);

  int part1 = number ~/ 1000;
  int part2 = number % 1000;

  int sum1 = part1 ~/ 100 + (part1 % 100) ~/ 10 + part1 % 10;
  int sum2 = part2 ~/ 100 + (part2 % 100) ~/ 10 + part2 % 10;

  if (sum1 == sum2) {
    print('$number is a lucky number.');
  } else {
    print('$number is not a lucky number.');
  }
}
