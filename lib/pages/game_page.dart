import 'package:flutter/material.dart';
import '../models/game_data.dart';
import '../utils/app_text_styles.dart';
import '../widgets/score_board.dart';
import '../widgets/choice_card.dart';
import '../services/game_logic.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late GameData _gameData;
  var _appImage = const AssetImage("images/default.png");
  var _message = "Select an option below:";
  bool _initialized = false;

  void _selectOption(String userSelection) {
    final appSelection = GameLogic.generateAppSelection();
    final result = GameLogic.checkWinner(userSelection, appSelection);

    setState(() {
      _appImage = AssetImage("images/$appSelection.png");

      switch (result) {
        case GameResult.win:
          _message = "You won this round!";
          _gameData.userScore++;
          break;
        case GameResult.loss:
          _message = "App won this round!";
          _gameData.appScore++;
          break;
        case GameResult.draw:
          _message = "It's a draw!";
          break;
      }

      if (_gameData.isGameOver) {
        Future.delayed(const Duration(seconds: 1), () {
          if (mounted) {
            Navigator.pushReplacementNamed(context, '/result', arguments: _gameData);
          }
        });
      } else {
        _gameData.currentRound++;
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _gameData = ModalRoute.of(context)!.settings.arguments as GameData;
      _initialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Playing Jokenpô")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ScoreBoard(
            userScore: _gameData.userScore,
            appScore: _gameData.appScore,
            currentRound: _gameData.currentRound,
            maxRounds: _gameData.maxRounds,
          ),
          const Spacer(),
          const Text("App's choice:", style: AppTextStyles.body),
          const SizedBox(height: 10),
          Image(image: _appImage, height: 120),
          const SizedBox(height: 30),
          Text(_message, style: AppTextStyles.subtitle, textAlign: TextAlign.center),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChoiceCard(imagePath: "images/rock.png", onTap: () => _selectOption("rock")),
              ChoiceCard(imagePath: "images/paper.png", onTap: () => _selectOption("paper")),
              ChoiceCard(imagePath: "images/scissors.png", onTap: () => _selectOption("scissors")),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
