// https://www.codewars.com/kata/5abd66a5ccfd1130b30000a9/train/dart
main() {
  var tests = [
    [13, 27, 49],
    [50, 60, 70, 80],
    [80]
  ];
  tests.forEach((element) {
    print(rowWeights(element));
  });
}

List<int> rowWeights(List<int> arr) {
  var answer = [0, 0];

  for (var i = 0; i < arr.length; i++) {
    answer[i & 1] += arr[i];
  }

  return answer;
}
