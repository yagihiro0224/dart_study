void main() {
  // print('dart study');
  var player = Player(
    name: 'kim',
    xp: 1000,
    team: 'red',
    age: 20,
  );
  var player2 = Player(
    name: 'park',
    xp: 2000,
    team: 'blue',
    age: 20,
  );
  // player.name = 'xxx'; // name is final. this code error.
  // print(player.name);
  player.sayHello();
  player2.sayHello();

  var redPlayer = Player.createRedPlayer(
    name: 'kim',
    age: 22,
  );
  redPlayer.sayHello();

  var bluePlayer = Player.createBluePlayer(
    'park',
    24,
  );
  bluePlayer.sayHello();
}

class Player {
  // 클래스는 반드시 데이터형을 명시해라.
  // late: 변수 선언은 여기서 했지만 값은 나중에 받을것을 의미.
  // late final String name;
  // late int xp;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  // 위의 방법보다 더 간단하게 초기화 하는 방법.
  final String name, team;
  int xp, age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  Player.createBluePlayer(
    String name,
    int age,
  )   : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  void sayHello() {
    // var name = 'park';
    // print("Hi~ My name is $name.");
    print(
        "Hi~ My name is ${this.name}. team is ${this.team}. xp is ${this.xp}.");
  }
}
