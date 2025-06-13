import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final bool newsletter;
  final bool updates;
  final bool darkMode;
  final bool offlineMode;

  const SummaryPage({
    super.key,
    required this.name,
    required this.email,
    required this.about,
    required this.sliderValue,
    required this.newsletter,
    required this.updates,
    required this.darkMode,
    required this.offlineMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zusammenfassung')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Profil', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text('Name: $name'),
            Text('E-Mail: $email'),
            Text('Über mich: $about'),
            const SizedBox(height: 25),

            const Text('Slider-Wert', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text('Wert: ${sliderValue.round()}'),
            const SizedBox(height: 25),

            const Text('Einstellungen', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text('Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('Updates: ${updates ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${darkMode ? "An" : "Aus"}'),
            Text('Offline-Modus: ${offlineMode ? "An" : "Aus"}'),
          ],
        ),
      ),
    );
  }
}
