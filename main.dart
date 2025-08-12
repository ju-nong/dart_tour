// String getIntroduce(String name){
//   return "Hello $name nice to meet you!";
// }

String getIntroduce(String name) => "Hello $name nice to meet you!";

void sayHello(String name) {
  print(getIntroduce(name));
}

void main() {
  sayHello("이준용");
}
