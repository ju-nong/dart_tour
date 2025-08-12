typedef ListOfInts = List<int>;

List<int> reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  print(reversed);
  print(reversed.toList());
  return reversed.toList();
}

void main() {
  reverseListOfNumbers([1, 2, 3, 4]);
}
