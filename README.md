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
  print(hateThreeList);    // [1, 2, 4]
  ```
- 2.2 String Interpolation
  `Dart`에서 문자열 안에 변수나 계산식을 표현하는 방식이다
  ```Dart
  var name = "이준용";
  var age = 25;

  // 단일 변수 사용
  print("안녕하세요 제 이름은 $name입니다");    // 안녕하세요 제 이름은 이준용입니다

  // 계산 표현식 사용
  print("안녕하세요 제 이름은 ${name}입니다");  // 안녕하세요 제 이름은 이준용입니다
  print("제 나이는 만으로 ${age - 2}살입니다");    // 제 나이는 만으로 23살입니다
  ```
- 2.3 Collection For
  `Collection` 변수에 값을 초기화할 때 반복문을 이용해서 요소를 결정할 수 있는 문법이다
  ```Dart
  var newFriends = ["장윤아", "모카"];
    var oldFriends = ["이준용", "오아리", for (var friend in newFriends) "❤ $friend"];

    print(oldFriends);    // [이준용, 오아리, ❤ 장윤아, ❤ 모카]
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

  print(numbers);    // {1, 2, 3, 4}
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
    sayHello("이준용");    // Hello 이준용 nice to meet you!
  }

  ```
- 3.1 Named Parameters
  `Dart`에서는 함수에 쓰이는 매개변수에 `null`값 방지와 기본값을 정의할 수 있는 문법이 있다
  아래는 `Named Parameters`문법을 사용해서 `null`값 방지와 기본값을 정의하는 방법이다
  변수명 앞에 `required` 키워드를 붙여주면 `null`값 방지가 되고, 기본값은 변수에 값 초기화 시키듯이 하면 된다
  해당 문법으로 정의된 함수를 호출할 때는 인수 앞에 정의된 매개변수명을 붙여주면 된다
  ```dart
  String sayHello({
    String name = "홍길동",
    required int age,
    String country = "South Korea",
  }) {
    return "Hello $name, you are $age, and you come from $country";
  }

  void main() {
    print(sayHello(name: "이준용", age: 25));  // Hello 이준용, you are 25, and you come from South Korea
  }
  ```
- 3.2 Optional Positional Parameters
  일반적인 함수 매개변수 정의 문법은 순서대로 받는 형태인 `Positional Parameters`문법이다
  아래는 해당 문법에서도 기본값을 정의할 수 있는 방법이다
  ```dart
  String sayHello(String name, int age, [String? country = "South Korea"]) => "Hello $name, you are $age, years old from $country";

  void main() {
    print(sayHello("이준용", 25));
  }

  ```
- 3.4 QQ Operator
  `null`과 관련된 연산자 두 개를 배웠다
  `??` 연산자는 앞에 오는 값이 `null`일 경우 뒤에 오는 값으로 대체 해준다
  `?=` 연산자는 앞에 오는 변수값이 `null`일 경우 뒤에 오는 값을 대입 해준다
  ```dart
  String capitalizeName(String? name) => name?.toUpperCase() ?? "ANON";

  void main() {
    print(capitalizeName("oari"));    // OARI
    print(capitalizeName(null));    // ANON

    String? name;
    name ??= "이준용";    // 이준용 대입
    name ??= "오아리";    // null이 아니기 때문에 대입 안됨

    print(name);    // 이준용
  }
  ```
- 3.5 Typedef
  `typedef`문을 사용하면 원하는 타입에 별명을 붙일 수 있다
  ```dart
  typedef ListOfInts = List<int>;

  ListOfInts reverseListOfNumbers(ListOfInts list) {
    var reversed = list.reversed;
    return reversed.toList();
  }

  void main() {
    print(reverseListOfNumbers([1, 2, 3, 4]));
  }
  ```

## 4. Classes
- 4.0 Your First Dart Class
  `Dart`에서 클래스를 정의하는 방법을 공부했다
  특이한 점으로는 메소드 안에서 멤버 변수를 사용할 때 `this.` 키워드를 생략하는 것을 권장하는 것이다
  같은 블럭 안에 멤버 변수명과 동일한 이름을 가진 지역 변수가 있는 경우에는 `this.` 키워드를 붙여서 접근할 수 있다
  ```dart
  class Player {
    final String name = "이준용";
    int xp = 1500;

    void sayHello() {
      var name = "홍길동";

      print("Hi $name my name is ${this.name}");
    }
  }

  void main() {
    var player = Player();

    player.sayHello();    // Hi 홍길동 my name is 이준용
  }
  ```
- 4.1 Constructors
  생성자를 정의할 때는 클래스와 같은 이름으로 한다
  단순하게 인자만 받아서 멤버 변수 값을 초기화 하는 경우를 위한 짧은 문법도 제공한다
  ```dart
  class Player {
    // 일반적인 방법
    late final String name;
    late int xp;

    Player(String name, int xp) {
      this.name = name;
      this.xp = xp;
    }

    // 짧은 문법
    final String name;
    int xp;

    Player(this.name, this.xp);

    void sayHello() {
      print("Hi my name is ${name}");
    }
  }

  void main() {
    var player1 = Player("이준용", 10);
    var player2 = Player("오아리", 10);

    player1.sayHello();    // Hi my name is 이준용
    player2.sayHello();    // Hi my name is 오아리
  }
  ```
- 4.2 Named Constructor Parameters
  함수에서도 인자에 이름을 붙여서 보낼 수 있던 것처럼 클래스 생성자에서도 동일한 방법으로 적용이 가능하다
  ```dart
  class Player {
    final String name;
    int xp;
    String team;
    int age;

    // null 방지를 위해 필수값 설정
    Player({
      required this.name,
      required this.xp,
      required this.team,
      required this.age,
    });

    // 또 다른 null 방지를 위해 기본값 설정
    Player({
      this.name = "홍길동",
      this.xp = 0,
      this.team = "white",
      this.age = 0,
    });

    void sayHello() {
      print("Hi my name is ${name}");
    }
  }

  void main() {
    var player1 = Player(name: "이준용", age: 10, team: 'red', xp: 12);
    var player2 = Player(name: "오아리", age: 10, team: 'blue', xp: 12);

    player1.sayHello();
    player2.sayHello();
  }
  ```
- 4.3 Named Constructors
  기본 생성자 말고 다른 형식으로 작동하는 생성자를 만들고 싶을 때 사용한다
  아래는 Player라는 클래스에서 블루팀과 레드팀 인스턴스를 생성해주는 코드다
  ```dart
  class Player {
    final String name;
    int xp, age;
    String team;

    // 기본
    Player({
      required this.name,
      required this.xp,
      required this.team,
      required this.age,
    });

    // named constructor parameters & named constructor
    Player.createBluePlayer({required String name, required int age})
    : this.name = name,
      this.age = age,
      this.team = "blue",
      this.xp = 0;

    // positional constructor parameters & named constructor
    Player.createRedPlayer(String name, int age)
    : this.name = name,
      this.age = age,
      this.team = "red",
      this.xp = 0;

    void sayHello() {
      print("Hi my name is ${name}");
    }
  }

  void main() {
    var bluePlayer = Player.createBluePlayer(name: "이준용", age: 25);
    var redPlayer = Player.createRedPlayer("오아리", 13);
  }
  ```
- 4.5 Cascade Notation
  `Dart`에서는 같은 객체에 일련의 작업을 연속으로 수행할 수 있게 지원하는 문법이 있다
  ```dart
  class Player {
    String name, team;
    int xp;

    Player({required this.name, required this.team, required this.xp});

    void sayHello() {
      print("Hi my name is ${name}");
    }
  }

  void main() {
    var nico = Player(name: "nico", team: "red", xp: 12000)..sayHello();

    var potato = nico
      ..name = "las"
      ..xp = 1200000
      ..team = "blue"
      ..sayHello();
  }
  ```

- 4.6 Enums
	`Dart`에서 `enum`을 정의하는 방법이다
	```dart
	enum Team { red, blue }

	enum XPLevel { beginner, medium, pro }

	class Player {
	  String name;
	  Team team;
	  XPLevel xp;
  
	  Player({required this.name, required this.team, required this.xp});
  
	  void sayHello() {
	    print("Hi my name is ${name}");
	  }
	}

	void main() {
	  var nico = Player(name: "nico", team: Team.red, xp: XPLevel.medium)
	  ..sayHello();
  
	  var potato = nico
	    ..name = "las"
	    ..team = Team.blue
	    ..xp = XPLevel.pro
	    ..sayHello();
	}
	```

- 4.7 Abstract Classes
	`Dart`에서 추상화 클래스를 정의하는 방법이다
	```dart
	abstract class Human {
	  void walk();
	}

	enum Team { red, blue }

	enum XPLevel { beginner, medium, pro }

	class Player extends Human {
	  String name;
	  Team team;
	  XPLevel xp;
  
	  Player({required this.name, required this.team, required this.xp});
  
	  void walk() {
	    print("I'm walking");
	  }
  
	  void sayHello() {
	    print("Hi my name is ${name}");
	  }
	}
  
	class Coach extends Human {
	  void walk() {
	    print("the coach is walking");
	  }
	}
	```
- 4.8 Inheritance
	`Dart`에서 상속하는 방법이다
	```dart
	enum Team { blue, red }

	class Human {
	  final String name;
	  
	  Human({required this.name});
	  
	  void sayHello() {
	    print("Hi my name is $name");
	  }
	}

	class Player extends Human {
	  final Team team;
  
	  Player({required this.team, required String name})
	    : super(name: name);	// Human 클래스 생성자의 name값 전달
  
	  @override		// 오버라이드
	  void sayHello() {
	    super.sayHello();		// Human 클래스의 sayHello 호출
    
	    print("and I play for $team");
	  }
	}

	void main() {
	  var player = Player(team: Team.red, name: "nico");
  
	  player.sayHello();
	}
	```
- 4.9 Mixins
	생성자가 없는 클래스로 다른 클래스에서 사용할 속성이나 메소드를 정의한다
	이전 `Dart` 버전에서는 똑같이 `class` 키워드로 정의를 했지만, 현재 사용 중인 `3.8.3` 버전에서는 `mixin` 키워드를 사용한다
	```dart
	enum Team { blue, red }

	mixin Strong {
	  final double strengthLevel = 1500.99;
	}
	
	mixin QuickRunner {
	  void runQuick() {
	    print("ruuuuuuuun!");
	  }
	}
	
	mixin Tall {
	  final double height = 1.99;
	}
	
	class Player with Strong, QuickRunner, Tall {
	  final Team team;
	
	  Player({required this.team});
	}
	
	void main() {
	  var player = Player(team: Team.red);
	}
	```