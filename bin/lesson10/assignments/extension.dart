// Định nghĩa extension IntExtensions cho lớp int
void main() {
  int number = 5;

  // Kiểm tra số nguyên tố
  print('$number có phải là số nguyên tố không? ${number.isPrime()}');

  // Tính giai thừa
  print('Giai thừa của $number là: ${number.factorial()}');

  // Kiểm tra số chẵn
  print('$number có phải là số chẵn không? ${number.isEvenNumber()}');

  // Thử nghiệm với một số khác
  int anotherNumber = 4;
  print(
      '$anotherNumber có phải là số nguyên tố không? ${anotherNumber.isPrime()}');
  print('Giai thừa của $anotherNumber là: ${anotherNumber.factorial()}');
  print(
      '$anotherNumber có phải là số chẵn không? ${anotherNumber.isEvenNumber()}');
}

extension IntExtensions on int {
  // Tính giai thừa
  int factorial() {
    if (this < 0) throw ArgumentError('Không thể tính giai thừa của số âm');
    if (this == 0) return 1;
    int result = 1;
    for (int i = 1; i <= this; i++) {
      result *= i;
    }
    return result;
  }

  // Kiểm tra số chẵn
  bool isEvenNumber() {
    return this % 2 == 0;
  }

  // Kiểm tra số nguyên tố
  bool isPrime() {
    if (this <= 1) return false;
    for (int i = 2; i <= this ~/ 2; i++) {
      if (this % i == 0) return false;
    }
    return true;
  }
}
