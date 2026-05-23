import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.teal],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Jokenpo", style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 10),
            const Text("Let's go!", style: TextStyle(fontSize: 24, color: Colors.white70)),
            const SizedBox(height: 50),
            CustomButton(
              label: "PLAY",
              color: Colors.lightGreen,
              onPressed: () {
                Navigator.pushNamed(context, '/config');
              },
            ),
          ],
        ),
      ),
    );
  }
}
