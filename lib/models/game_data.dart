class GameData {
  final int maxRounds;
  int userScore;
  int appScore;
  int currentRound;

  GameData({
    required this.maxRounds,
    this.userScore = 0,
    this.appScore = 0,
    this.currentRound = 1,
  });

  bool get isGameOver => userScore > maxRounds / 2 || appScore > maxRounds / 2 || currentRound > maxRounds;
  
  String get winner {
    if (userScore > appScore) return "You";
    if (appScore > userScore) return "App";
    return "Draw";
  }
}
