import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Settings'),
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: const Center(
        child: Text(
          'Settings Screen Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
