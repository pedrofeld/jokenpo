import 'package:flutter/material.dart';

class ChoiceCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const ChoiceCard({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Image.asset(imagePath, height: 80),
      ),
    );
  }
}
