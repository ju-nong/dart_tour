# Dart

## 1. Variables

-   1.0 Hello World
    모든 코드는 `main` 함수 안에 들어가야 됨
    `Dart` 같은 경우는 `Formatter`가 자동으로 세미콜론을 달아주지 않음, 그 이유는 세미콜론을 안 쓸 때가 있기 때문
-   1.1 The Var Keyword
    `Dart`에서 변수를 선언할 때는 변수명 앞에다가 `var` 선언문을 쓰거나, `String` 같은 타입을 명시하는 방법이 존재한다
    함수나 메소드 구문 안에서 지역 변수를 선언할 때는 `var` 선언문을 사용하는 것이 권장 방식이다
    클래스에서 변수나 속성을 선언할 때는 타입을 명시하는 방법을 지정해준다

    ```Dart
    // var
    var name = "이준용";

    // type
    String pet = "오아리";
    ```
