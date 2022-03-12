/**
 * https://www.codewars.com/kata/51675d17e0c1bed195000001/train/dart
 * 
 * Find the greatest sequence of 5 consecutive digits
 */
main() {
  print(solution("731674765"));
}

int solution(String digits) {
  var max = 0;

  for (var i = 0; i < digits.length - 4; i++) {
    max = int.parse(digits.substring(i, i + 5)) > max
        ? int.parse(digits.substring(i, i + 5))
        : max;
  }

  return max;
}
