import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _newsletter = false;
  bool _updates = false;
  bool _darkMode = false;
  bool _offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Checkboxen:', style: TextStyle(fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: const Text('Newsletter abonnieren und Info per EMAIL erhalten'),
              value: _newsletter,
              onChanged: (value) {
                setState(() {
                  _newsletter = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('App-Updates automatisch installieren'),
              value: _updates,
              onChanged: (value) {
                setState(() {
                  _updates = value!;
                });
              },
            ),
            const Divider(),
            const Text('Switches:', style: TextStyle(fontWeight: FontWeight.bold)),
            SwitchListTile(
              title: const Text('Dunkler Modus'),
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Offline-Modus'),
              value: _offlineMode,
              onChanged: (value) {
                setState(() {
                  _offlineMode = value;
                });
              },
            ),
            const SizedBox(height: 30),
            const Divider(),
            const Text('Aktuelle Auswahl:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Newsletter: ${_newsletter ? "Ja" : "Nein"}'),
            Text('Updates: ${_updates ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${_darkMode ? "An" : "Aus"}'),
            Text('Offline-Modus: ${_offlineMode ? "An" : "Aus"}'),
          ],
        ),
      ),
    );
  }
}
