class Player {
  final int id;
  final String name;
  final int ability;
  final int power;

  const Player(this.id, this.name, this.power, this.ability);
  String? validMessage() {
    // example condition
    if (ability < 15 && power > 30) {
      return "Too powerfull!! are you cheating?";
    } else if (ability > 15 && power > 10) {
      return "LOL, too weak!! do you want to lose?";
    }
    return null;
  }

  Player copyWith({
    int? id,
    String? name,
    int? age,
    int? power,
  }) =>
      Player(id ?? this.id, name ?? this.name, power ?? this.power,
          age ?? ability);
}
