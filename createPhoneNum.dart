//https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/dart
main() {
  print(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
}

String createPhoneNumber(List numbers) {
  return (numbers.length >= 9)
      ? "(${numbers.sublist(0, 3).join()}) ${numbers.sublist(3, 6).join()}-${numbers.sublist(6, 10).join()}"
      : "";
}
