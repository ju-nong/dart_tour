String sayHello({
  String name = "홍길동",
  required int age,
  String country = "South Korea",
}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayHello(name: "이준용", age: 25));
}
