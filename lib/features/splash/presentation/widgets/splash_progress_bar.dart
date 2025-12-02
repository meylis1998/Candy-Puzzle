import 'package:flutter/material.dart';

class SplashProgressBar extends StatelessWidget {
  final double progress;
  final double width;
  final double height;

  const SplashProgressBar({
    super.key,
    required this.progress,
    this.width = 200,
    this.height = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFFBCFE8),
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: width * progress.clamp(0.0, 1.0),
          height: height,
          decoration: BoxDecoration(
            color: const Color(0xFFEC4899),
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
      ),
    );
  }
}
