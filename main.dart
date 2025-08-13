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

  player.runQuick();
}
