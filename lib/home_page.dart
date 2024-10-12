// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:theme/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ));
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
