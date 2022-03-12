// https://www.codewars.com/kata/56e9e4f516bcaa8d4f001763/train/dart
main() {
  var tests = [6, -15, 0];
  tests.forEach((element) {
    print(showSequence(element));
  });
}

String showSequence(int n) {
  if (n < 0)
    return "$n<0";
  else if (n == 0) return "0=0";

  var listNum = List.generate(n + 1, (int index) => index);

  return "${listNum.join("+")} = ${listNum.reduce((value, element) => value + element)}";
}
