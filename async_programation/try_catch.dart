void main() {
  var value = stringToInt('s0');

  print(value);
}

dynamic stringToInt(String text) {
  try {
    return (int.parse(text));
  } catch (err) {
    throw Exception("The text ($text) isn't a number");
  }
}
