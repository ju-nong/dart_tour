# Dart

## 1. Variables

-   1.0 Hello World
    모든 코드는 `main` 함수 안에 들어가야 된다
    `Dart` 같은 경우는 `Formatter`가 자동으로 세미콜론을 달아주지 않는다, 그 이유는 세미콜론을 안 쓸 때가 있기 때문
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

-   1.2 Dynamic Type
    변수에 어떤 타입의 값이 담길지 알기 어려운 경우나, 때론 그런 변수를 생성해야 되는 상황이 생겼을 때 사용한다
    `var` 선언문 다음 변수명을 적고 초기값을 지정하지 않거나, `dynamic`이라는 타입을 명시해주면 된다

    ```dart
    // var
    var anything;
    anything = "이준용";
    anything = 25;

    // type
    dynamic responseCode = "200";
    responseCode = 200;
    responseCode = "SUCCESS";
    ```

    정말로 필요할 때만 사용해야 한다

-   1.3 Nullable Variables
    `Dart`는 기본적으로 컴파일 과정에서 `null` 값을 참조할 수 없도록 해주어 런타임에 발생할 수 있는 문제를 막아준다 (Null safety)
    또한 변수 값에 `null`도 허용할 수 있는 구문을 제공한다

    ```dart
    String? name = "이준용";
    name = null;

    // 값 검사
    if(name != null){
    	name.isNotEmpty;
    }

    // 속성 존재 검사
    name?.isNotEmpty;
    ```

-   1.4 FinalVariables
    상수를 선언할 때 `final` 선언문을 사용한다
    `final` 다음에 타입을 명시해도 된다

    ```dart
    final name = "이준용";
    // or
    final String name = "이주뇽";
    ```

-   1.5 Late Variables
    초기 데이터 없이 변수를 선언할 때 사용한다
    앞에 `late` 구문을 붙여준다
    일반 변수도 `late` 구문 없이도 초기 데이터 없이 선언할 수 있던데, 추후 클래스 배울 때 차이점을 알 수 있다는 댓글을 발견했다
-   1.6 Constant Variables
    `final`로 선언한 상수가 런타임 상수였다면, `const`로 선언한 상수는 리터럴 값을 갖는 컴파일 상수이다.
    ```dart
    const APP_NAME = "Dart tour APP";
    const API_KEY = "ILO_VEY_OU"
    ```
