import 'package:flutter/material.dart';

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
            _contactCard(),
            const SizedBox(height: 40),
            const Placeholder(),
          ],
        ),
      ),
    );
  }

  Widget _contactCard() {
    return Card(
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
    );
  }
}
