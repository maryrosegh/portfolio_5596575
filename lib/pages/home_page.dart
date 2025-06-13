import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Zur Slider-Seite'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SliderPage()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Profil bearbeiten'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileFormPage()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Einstellungen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
