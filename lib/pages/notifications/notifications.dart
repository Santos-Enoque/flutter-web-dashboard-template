import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Notifications'),
        iconTheme:
            const IconThemeData(color: Colors.grey), // Set the icon color
      ),
      body: const Center(
        child: Text(
          'Notification Screen Content',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
