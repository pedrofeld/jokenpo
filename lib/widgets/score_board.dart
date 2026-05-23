import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

class ScoreBoard extends StatelessWidget {
  final int userScore;
  final int appScore;
  final int currentRound;
  final int maxRounds;

  const ScoreBoard({
    super.key,
    required this.userScore,
    required this.appScore,
    required this.currentRound,
    required this.maxRounds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        children: [
          Text("Round $currentRound of $maxRounds", style: AppTextStyles.body),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _ScoreItem(label: "You", score: userScore),
              const Text("vs", style: AppTextStyles.subtitle),
              _ScoreItem(label: "App", score: appScore),
            ],
          ),
        ],
      ),
    );
  }
}

class _ScoreItem extends StatelessWidget {
  final String label;
  final int score;

  const _ScoreItem({required this.label, required this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: AppTextStyles.body),
        Text("$score", style: AppTextStyles.title),
      ],
    );
  }
}
