// 01. 다트문법 1 : 변수 사용하기

// main 메서드를 가장 먼저 호출한다

// void는 리턴값이 없다는 표시임

void main(List<String> args) {
  // 1. var 선언변수 :
  // var는 할당되는 값으로 형이 결정되는 자유로운 변수 선언 형식이다
  // 단, 처음에 할당한 형식으로만 재할당가능
  var myHome = "내집이야";

  // 출력은 print()
  print(myHome);
  // cs언어는 마지막 세미콜론 필수!

  // var 선언변수는 재할당 가능할까? => 안됨
  // myHome = 32;
  // 처음에 넣은 데이터 형과 다른 형은 할당불가
  myHome = "너의 집도 매우 크다";
  print(myHome);

  // 2. dynamic 선언변수
  // -> var와 유사하게 다양한 데이터형 할당 가능함
  // 단, 처음 할당 형과 다른 형을 넣어도 됨
  dynamic myId = "hhh11";
  print("나의 아이디는 $myId");
  myId = 12345;
  print("나의 아이디는 $myId");

  // [ 문자형안에 변수 출력법 : '${코드}' '$변수']

  // [ 다트언어의 데이터 형]
  // 다트 언어는 CS 언어이기 때문에 변수형 선언이 기본이다
  // 1. 숫자형 : int - 정수 / double - 실수 / num - 정수/실수
  int number1 = 2024;
  print('정수형: $number1');
  number1 = 888;
  print('정수형: $number1');
  // 형이 다른 숫자를 재할당하면? -> 에러남 (number1 = 3.2;)
  // 실수는 double로 선언해 줘야한다 , 정수를 넣어도 실수형으로 변환하여 출력함(실수형으로 저장한다)
  // 예) 7 -> 7.0
  double number2 = 3.2;
  number2 = 7;
  print('실수형: $number2');

  // 정수/실수를 모두 포괄하는 형은 ? num
  num number3 = 100;
  number3 = 3.14;
  print('숫자형: $number3');

  // 2. 문자형 : String
  String name = "톰 행크스";
  print("나의 이름은: $name입니다");

  // 3. 불린형 : bool
  bool isTrue = true;
  print("진짜인가? 가짜인가? $isTrue");

  /************************************************ 
   * [ 제네릭(Generic)이란? ] : 일반화하다라는 단어 General과 같은 계열의 단어
   * List 나 Set 또는 Map 집합데이터형을 지정할 때
   * 내부 데이터형을 정해주는 방법이다
   * List<제네릭> or Set<제네릭> or Map<제네릭>
   ************************************************/

  // 4. 콜렉션 : 묶음데이터
  // List / Set / Map
  // 4-1. List형 - 배열과 비슷함
  List<String> we = ['너', '나', '우리'];
  // var we =  <String>['너', '나', '우리'];
  // 위와 같이 제네릭을 이퀄 뒤에 표기가능(변수 선언은 var/dynamic)  

  // List<dynamic> we = ['너', '나', '우리', 3];
  // 만약 다양한 형으로 사용할 경우엔 dynamic형을 사용함
  // 처음에 형을 var나 dynamic형으로 리스트형을 만들 수 있다
  // -> var me = ["하하", 55];

  // 데이터 추가
  we.addAll(["형", "동생", "누나", "언니"]);
  we.add("형수");
  // we.add(88); -> 다른 형은 에러남
  print(we);

  print(we[2] + "는 모두 친구입니다");
  // List형의 길이는 length 속성을 사용함
  print("리스트 개수:" + we.length.toString());
  // 일반 더하기로 문자형에 숫자를 더하면 에러남 -> 문자형과 숫자형은 더할 수 없어서
  // 숫자형을 문자형으로 형 변환해야함 ( 캐스팅:toString()문자형변환 )

  // 4-2. Set형 : 중복없는 배열과 유사
  // -> 순서가 없고 중복되지 않는 데이터 집합 (중복되는 값을 제거 후 출력해줌)
  // -> 순서가 없으므로 호출해서 사용코자 할 때는 List형으로 변환 후 사용한다-> Set형변수.toList()
  // Set<int> evens = {2, 4, 6, 8, 10, 4, 12, 8};
  // var evens = {2, 4, 6, 8,'짝수', 10, 4, 12, 8,'짝수'};
  Set<dynamic> evens = {2, 4, 6, 8, '짝수', 10, 4, 12, 8, '짝수'};
  print("짝수Set:$evens");
  // 리스트형으로 형변환
  print("짝수Set을 List변환:${evens.toList()}");
  // 리스트로 변환 후 순번으로 출력 가능
  print("짝수Set을 List변환후[4]:${evens.toList()[4]}");

  // 4-3. Map형 : 데이터에 라벨링 된 데이터 집합(JS 객체와 유사)
  Map<>;
} //////////////////////////////// main 메서드 ////////////////////////////////
