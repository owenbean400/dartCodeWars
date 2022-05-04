// https://www.codewars.com/kata/55be10de92aad5ef28000023/train/dart
// Math: https://www.cliffsnotes.com/study-guides/algebra/algebra-ii/additional-topics/binomial-coefficients-and-the-binomial-theorem
main() {
  // print(checkChoose(6, 4));
  // print(checkChoose(4, 4));
  // print(checkChoose(4, 2));
  // print(checkChoose(35, 7));
  print(checkChoose(47129212243960, 50));
  print(checkChoose(47129212243961, 50));
}

/**
 * Equation: m = n! / (x! * (n - x)!)
 * 
 * Solving for X
 */
int checkChoose(int m, n) {
  List<int> list = [1];
  while (list.length < n + 1) {
    List<int> temp = List.filled(list.length + 1, 0, growable: false);
    int i = 0;
    temp[i++] = 1;
    for (; i < list.length; i++) {
      temp[i] = list[i] + list[i - 1];
    }
    temp[i] = 1;
    list = temp;
  }

  int curr = 0;
  int index = 0;
  while (curr != m && index < list.length) {
    curr = list[index];
    index++;
  }

  return (index != list.length) ? --index : -1;
}
