// https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/dart
main() {
  var tests = ["abcd", "RqaEzty", "cwAt"];
  tests.forEach((element) => {print("$element => ${accum(element)}")});
}

String accum(String str) {
  var listStr = str.split("");

  for (var i = 0; i < listStr.length; i++) {
    listStr[i] = listStr[i].toUpperCase() +
        List.filled(i, listStr[i].toLowerCase()).join("");
  }

  return listStr.join("-");
}
