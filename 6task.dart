// [Task 6]
//  Найти:
// а) сумму всех целых чисел от 100 до 500;
// б) сумму всех целых чисел от a до b (значения a и b вводятся с клавиатуры)
import 'dart:io';

void main() {
  int sum100To500 = 0;
  for (int i = 100; i <= 500; i++) {
    sum100To500 += i;
  }
  print('a) Sum of all integers from 100 to 500: $sum100To500');

  stdout.write('Enter the value of a: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the value of b: ');
  int b = int.parse(stdin.readLineSync()!);

  int sumAtoB = 0;
  for (int num = a; num <= b; num++) {
    sumAtoB += num;
  }
  print('b) Sum of all integers from $a to $b: $sumAtoB');
}
