import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Candy Puzzle'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Candy Puzzle!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text('Start your puzzle adventure'),
          ],
        ),
      ),
    );
  }
}
