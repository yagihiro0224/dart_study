void main() {
  // var name = 'kim';
  // var age = 12;
  // var greeting = 'Hello everyone, my name is $name, and I\'m ${age + 2}.';
  // print(greeting);
  // var oldFriend = ['nico', 'lynn'];
  // var newFriend = [
  //   'lewis',
  //   'ralph',
  //   'darren',
  //   for (var friend in oldFriend) "❤️ $friend",
  // ];
  // print(newFriend);
  // var player = {'name': 'nico', 'xp': 19.99, 'superPower': false};
  // Set<int> numbers = {1, 2, 3, 4}; // Set의 데이터는 유니크(온리 하나밖에 없는 값이여야 함).
  // numbers.add(5);
  // numbers.add(6);
  // numbers.add(7);
  // print(numbers);
  // var setMyName = 'KIM';
  // print(sayHello(setMyName));
  // print(sayHello('kim', 43, 'korea'));
  // print(sayHello(age: 43, country: 'korea', name: 'kim'));
  // print(sayHello()); // required로 지정 했기 때문에 반드시 값을 세팅해야하므로 이 코드는 에러가 뜸.
  // print(plus(10, 20));
  // print(sayHello('kim', 28));
  // var result = capitalizeName('kim');
  // var result2 = capitalizeName(null);
  // print(result);
  // print(result2);

  // String? name;
  // name ??= 'kim';
  // name = null;
  // name ??= 'anon';
  // print(name);
  print(reverseListOfNumbers([1, 2, 3]));

  print(sayHi({'name' : 'kim'}));
}

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UseerInfo = Map<String, String>;

String sayHi(UseerInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

// String capitalizeName(String? name) => name != null ? name.toUpperCase() : 'non';
// String capitalizeName(String? name) => name?.toUpperCase() ?? 'non';
  // if(name != null) {
  //   return name.toUpperCase();
  // }
  // return 'non';


// String sayHello(String name, int age, [String? country = 'korea']) {
//   return 'Hello. my name is $name. $age old. from $country.';
// }

// num plus(num a, num b) => a + b;

// String sayHello(String name) {
//   return 'My name is $name.';
// }
// String sayHello(String name) => 'My name is $name.';

// String sayHello({
//   required name, 
//   required int age, 
//   required String country}) {
//   return "My name is $name. i\'m $age, come from $country.";
// }
