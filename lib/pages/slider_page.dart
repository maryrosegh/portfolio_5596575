import 'package:flutter/material.dart';
import 'summary_page.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider-Seite'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Wert: ${_sliderValue.round()}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            LinearProgressIndicator(
              value: _sliderValue / 100,
              minHeight: 10,
            ),
            const SizedBox(height: 20),
            Container(
              width: 100 + _sliderValue,
              height: 50,
             color: Colors.purpleAccent,
              child: const Center(child: Text('Box')),
            ),
          ],
        ),
      ),
    );
  }
}
