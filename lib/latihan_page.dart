//kalkulator
import 'package:flutter/material.dart';

class LatihanPage extends StatefulWidget {
  const LatihanPage({Key? key}) : super(key: key);

  @override
  State<LatihanPage> createState() => _LatihanPageState();
}

class _LatihanPageState extends State<LatihanPage> {
  double _currentValue = 0;

  void _add() {
    setState(() {
      _currentValue += 5;
    });
  }

  void _subtract() {
    setState(() {
      _currentValue -= 3;
    });
  }

  void _divide() {
    setState(() {
      _currentValue /= 3;
    });
  }

  void _multiply() {
    setState(() {
      _currentValue *= 7;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nilai Saat Ini: ${_currentValue.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _add,
                  child: const Text('+ Tambah 5'),
                ),
                ElevatedButton(
                  onPressed: _subtract,
                  child: const Text('- Kurang 3'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _divide,
                  child: const Text(': Bagi 3'),
                ),
                ElevatedButton(
                  onPressed: _multiply,
                  child: const Text('x Kali 7'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
