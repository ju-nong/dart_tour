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
    const API_KEY = "ILO_VEY_OU";
    ```

## 2. Data types

-   2.0 Basic Data Types
    주로 쓰이는 원시형 데이터 타입에 대해 공부 했다

    ```dart
    void main() {
    	String name = "nico";
    	bool alive = true;

    	int age = 12;
    	double money = 69.99;

    	// int나 double의 부모 클래스인 num을 사용하면 이런식으로도 가능하다
    	num x = 10;
    	x = 1.1;
    }
    ```
- 2.1 Lists
	많이 쓰이는 배열 타입을 공부 했다
	추가로 `Colletction If`문도 알게 되었다
	```dart
	var numbers = [1, 2, 3, 4, 5];
	List<String> names = ["이준용", "오아리", "모카"];

	// collection if
	var hateThreeList = [1, 2, if(false) 3, 4];
	print(hateThreeList);		// [1, 2, 4]
	```
- 2.2 String Interpolation
	`Dart`에서 문자열 안에 변수나 계산식을 표현하는 방식이다
	```Dart
	var name = "이준용";
	var age = 25;

	// 단일 변수 사용
	print("안녕하세요 제 이름은 $name입니다");		// 안녕하세요 제 이름은 이준용입니다

	// 계산 표현식 사용
	print("안녕하세요 제 이름은 ${name}입니다");	// 안녕하세요 제 이름은 이준용입니다
	print("제 나이는 만으로 ${age - 2}살입니다");		// 제 나이는 만으로 23살입니다
	```
- 2.3 Collection For
	`Collection` 변수에 값을 초기화할 때 반복문을 이용해서 요소를 결정할 수 있는 문법이다
	```Dart
	var newFriends = ["장윤아", "모카"];
  	var oldFriends = ["이준용", "오아리", for (var friend in newFriends) "❤ $friend"];

  	print(oldFriends);		// [이준용, 오아리, ❤ 장윤아, ❤ 모카]
	```
- 2.4 Maps
	`Javascript`에 `Object`나 `Python`에 `Dictionary`와 같은 `key`와 `value`로 이루어진 데이터 타입이다
	```Dart
	// var
	var player = {"name": "이준용", "xp": 19.999, "superpower": false};

	// type
  	Map<String, Object> player = {
	    "name": "이준용",
	    "xp": 19.999,
	    "superpower": false,
  	};
	```
- 2.5 Sets
	순서가 있지만 각 요소가 유니크한 값을 가지는 데이터 타입니다
	```Dart
	// var
	var numbers = {1, 2, 3, 4};

	// type
	Set<int> numbers = {1, 2, 3, 4};

	numbers.add(1);	
	numbers.add(1);
	numbers.add(1);
	numbers.add(1);

	print(numbers);		// {1, 2, 3, 4}
	```

## 3. Functions

- 3.0 Defining a Function
	`Dart`에서 함수를 정의하는 방법은 일반적인 프로그래밍 언어의 형식과 동일하다
	특징이라면 바로 `return`을 해주는 함수 같은 경우는 또 다른 문법도 지원해주는 것이다
	```dart
	// basic
	String getIntroduce(String name){
		return "Hello $name nice to meet you!";
	}

	// fat arrow
	String getIntroduce(String name) => "Hello $name nice to meet you!";

	void sayHello(String name) {
		print(getIntroduce(name));
	}

	void main() {
		sayHello("이준용");		// Hello 이준용 nice to meet you!
	}

	```