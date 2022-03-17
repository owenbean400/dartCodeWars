// https://www.codewars.com/kata/556deca17c58da83c00002db/train/dart
void main() {
  print(tribonacci([1, 1, 1], 1));
}

List<num> tribonacci(List<num> signature, int n) {
  List<num> list = [];

  for (var i = 0; i < n; i++)
    list.add((i < 3)
        ? signature[i]
        : list[list.length - 1] +
            list[list.length - 2] +
            list[list.length - 3]);

  return list;
}
