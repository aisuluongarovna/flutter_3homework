// [Task 9]
// Дано натуральное число. Определить:
// а) количество цифр 3 в нем;
// б) сколько раз в нем встречается последняя цифра;
// в) количество четных цифр в нем. Составное условие и более одного неполно-
// го условного оператора не использовать;
// г) сумму его цифр, больших пяти;
// д) произведение его цифр, больших семи;
// е) сколько раз в нем встречаются цифры 0 и 5 (всего)
import 'dart:io';

void main() {
  stdout.write('Введите натуральное число: ');
  int number = int.parse(stdin.readLineSync()!);

  int digitThreeCount = 0;
  int lastDigitCount = 0;
  int evenDigitCount = 0;
  int sumGreaterThanFive = 0;
  int productGreaterThanSeven = 1;
  int zeroFiveCount = 0;

  int tempNumber = number;
  while (tempNumber > 0) {
    int digit = tempNumber % 10;

    //а)
    if (digit == 3) {
      digitThreeCount++;
    }

    //б)
    if (digit == number % 10) {
      lastDigitCount++;
    }

    //в)
    if (digit % 2 == 0) {
      evenDigitCount++;
    }

    //г)
    if (digit > 5) {
      sumGreaterThanFive += digit;
    }

    //д)
    if (digit > 7) {
      productGreaterThanSeven *= digit;
    }

    //е
    if (digit == 0 || digit == 5) {
      zeroFiveCount++;
    }

    tempNumber ~/= 10;
  }

  print('а) Количество цифр 3: $digitThreeCount');
  print('б) Сколько раз встречается последняя цифра: $lastDigitCount');
  print('в) Количество четных цифр: $evenDigitCount');
  print('г) Сумма цифр, больших пяти: $sumGreaterThanFive');
  print('д) Произведение цифр, больших семи: $productGreaterThanSeven');
  print('е) Количество цифр 0 и 5: $zeroFiveCount');
}
