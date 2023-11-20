void main() {
  var player = Player(
    team: Team.red,
    // name: 'kim',
  );

  double myHeight = player.height;
  double myStrengthtLevel = player.strenghtLevel;
  player.runQuick();
  print('My StrenghtLevel is $myStrengthtLevel');
  print('My Height is $myHeight');
  // player.sayHello();
}

class Human {
  final String name;
  Human({required this.name});
  //Human(this.name);

  void sayHello() {
    print("Hi. My name is $name.");
  }
}

// mixins 생성자가 없는 클래스.
mixin class Strong {
  final double strenghtLevel = 1500.99;
}

// mixins 생성자가 없는 클래스.
mixin class QuickRunner {
  void runQuick() {
    print("Runnnnnnnnn!");
  }
}

mixin class Tall {
  final double height = 1.99;
}

enum Team {
  blue,
  red,
}

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });

}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

// class Player extends Human {
//   final Team team;

//   Player({
//     required this.team,
//     required String name,
//   }) : super(name: name); // 부모의 name에 Player의 name을 설정한다는 의미.
//   //super(name);

//   // 오버라이드는 부모와 같은 이름의 메소드가 있을 경우 자식의 메소드를 사용하기 위한것.
//   @override
//   void sayHello() {
//     super.sayHello();
//     print('and I play for ${team.name} team.');
//   }
// }

// class Couch extends Human {}
