// [Task 7]
// Найти:
// а) среднее арифметическое всех целых чисел от 1 до 1000;
// б) среднее арифметическое всех целых чисел от a до b (значения a и b вводят-
// ся с клавиатуры; b a).
import 'dart:io';

void main() {
  //а)
  int sum1To1000 = 0;
  for (int i = 1; i <= 1000; i++) {
    sum1To1000 += i;
  }
  double average1To1000 = sum1To1000 / 1000;
  print('а)from 1 to 1000: $average1To1000');

  //б)
  stdout.write('a: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('b: ');
  int b = int.parse(stdin.readLineSync()!);

  int sumAtoB = 0;
  for (int num = a; num <= b; num++) {
    sumAtoB += num;
  }
  double averageAtoB = sumAtoB / (b - a + 1);
  print('б) from $a to $b: $averageAtoB');
}
