import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPortfolioApp(),
    );
  }
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  final TextStyle textTitleStyle = const TextStyle(fontSize: 30.0);
  final TextStyle textStyle = const TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person_4),
        title: const Text('Portfolio'),
        actions: [
          IconButton(
            tooltip: 'contact details',
            onPressed: () {
              //TODO implement navigation to next page
            },
            icon: const Icon(Icons.navigate_next_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/profile_pic.jpg',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 40),
            Text(
              'hello.',
              style: textTitleStyle,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              'i am a flutter developer',
              style: textStyle,
              textAlign: TextAlign.left,
            ),
            Text(
              'currently developing a fitness application',
              style: textStyle,
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
