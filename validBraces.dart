// https://www.codewars.com/kata/5277c8a221e209d3f6000b56/train/dart
main() {
  var tests = ["(){}[]", "([{}])", "(}", "[(])", "[({})](]", "}", "()("];
  tests.forEach((element) => print("$element => ${validBraces(element)}"));
  print("");
  tests.forEach((element) => print("$element => ${validBraces2(element)}"));
}

bool validBraces(String braces) {
  const openBraces = ["(", "{", "["];
  const closeBraces = [")", "}", "]"];
  var stack = [];

  for (var i = 0; i < braces.length; i++) {
    var c = braces.substring(i, i + 1);
    if (openBraces.contains(c)) {
      stack.add(c);
    } else if (closeBraces.contains(c)) {
      if (stack.isNotEmpty &&
          stack[stack.length - 1] == openBraces[closeBraces.indexOf(c)]) {
        stack.removeAt(stack.length - 1);
      } else {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

// Smarter Solution Found and shorten up
bool validBraces2(String braces) {
  while (
      braces.contains("()") || braces.contains("{}") || braces.contains("[]"))
    braces =
        braces.replaceAll("()", "").replaceAll("{}", "").replaceAll("[]", "");
  return braces.isEmpty;
}
