import 'dart:math';

enum GameResult { win, loss, draw }

class GameLogic {
  static final List<String> options = ["rock", "paper", "scissors"];

  static String generateAppSelection() {
    return options[Random().nextInt(options.length)];
  }

  static GameResult checkWinner(String userSelection, String appSelection) {
    if (userSelection == appSelection) return GameResult.draw;

    if ((userSelection == "rock" && appSelection == "scissors") ||
        (userSelection == "scissors" && appSelection == "paper") ||
        (userSelection == "paper" && appSelection == "rock")) {
      return GameResult.win;
    }

    return GameResult.loss;
  }
}
