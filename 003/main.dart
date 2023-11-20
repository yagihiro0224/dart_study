void main() {
  var apiData = [
    {
      "name": "kim",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "park",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "choi",
      "team": "red",
      "xp": 0,
    }
  ];

  // playerJson은 apiData안에 들어있는 데이트들 인가 봄.
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}

class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("My name is $name. My team is $team. Xp is $xp");
  }
}
