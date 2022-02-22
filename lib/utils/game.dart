import 'dart:math';

class Game {
  static int score = 0;

  static List<String> choices = ['Piedra', 'Papel', 'Tijeras'];
  static String? randomChoice() {
    Random random = Random();
    int robotChoiceIndex = random.nextInt(3);
    return choices[robotChoiceIndex];
  }
}

class Choice {
  String? type = '';

  static var gameRule = {
    'Piedra': {
      'Piedra': 'EMPATE',
      'Papel': 'PIERDES',
      'Tijeras': 'GANAS',
    },
    'Papel': {
      'Piedra': 'GANAS',
      'Papel': 'EMPATE',
      'Tijeras': 'PIERDES',
    },
    'Tijeras': {
      'Piedra': 'PIERDES',
      'Papel': 'GANAS',
      'Tijeras': 'EMPATE',
    }
  };
  Choice(this.type);
}
