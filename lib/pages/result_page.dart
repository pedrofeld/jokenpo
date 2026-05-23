import 'package:flutter/material.dart';
import '../models/game_data.dart';
import '../utils/app_text_styles.dart';
import '../widgets/custom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gameData = ModalRoute.of(context)!.settings.arguments as GameData;
    final winner = gameData.winner;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              winner == "Draw" ? "It's a Draw!" : "$winner Won!",
              style: AppTextStyles.title.copyWith(fontSize: 48),
            ),
            const SizedBox(height: 20),
            Text(
              "Final Score: ${gameData.userScore} x ${gameData.appScore}",
              style: AppTextStyles.subtitle,
            ),
            const SizedBox(height: 60),
            CustomButton(
              label: "PLAY AGAIN",
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/game',
                  arguments: GameData(maxRounds: gameData.maxRounds),
                );
              },
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              child: const Text("Back to Home", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
