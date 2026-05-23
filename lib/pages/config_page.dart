import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';
import '../widgets/custom_button.dart';
import '../models/game_data.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  int _selectedRounds = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("How many rounds?", style: AppTextStyles.subtitle),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 3, 5, 7].map((rounds) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    label: Text("$rounds"),
                    selected: _selectedRounds == rounds,
                    onSelected: (selected) {
                      setState(() {
                        _selectedRounds = rounds;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 50),
            CustomButton(
              label: "START GAME",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/game',
                  arguments: GameData(maxRounds: _selectedRounds),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
