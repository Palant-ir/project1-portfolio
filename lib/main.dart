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
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ContactPage();
              }));
            },
            icon: const Icon(Icons.navigate_next_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage:
                  const AssetImage('assets/images/profile_pic.jpg'),
              radius: 105,
              onBackgroundImageError: (e, sTrace) =>
                  debugPrint('image issue, $e, $sTrace'),
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

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  final TextStyle textStyle = const TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Info'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 6,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: Text(
                      'han.kaungkhant42@gmail.com',
                      style: textStyle,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: Text(
                      '+65 9180 8539',
                      style: textStyle,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.apps),
                    title: Text(
                      'github : @sumerAk',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Placeholder(),
          ],
        ),
      ),
    );
  }
}
