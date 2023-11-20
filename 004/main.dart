void main() {
  var kim = Player(
    name: 'kim',
    xp: XPLevel.beginner,
    team: Team.red,
  );
  kim.sayHello();

  // Cascade Notation
  var potato = kim
    ..name = 'park'
    ..xp = XPLevel.medium
    ..team = Team.blue
    ..sayHello();

  potato.walk();
}

// 추상화 클래스.
abstract class Human {
  void walk();
}

enum Team {
  red,
  blue,
}

enum XPLevel {
  beginner,
  medium,
  pro,
}

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("my name is $name. xp is ${xp.name}. team is ${team.name}.");
  }

  // 휴먼 추상화 클래스를 확장했으므로 워크 함수를 써야만 한다.
  void walk() {
    print('I\'m walk.');
  }
}
