import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Volume Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volume Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CubePage()),
                );
              },
              child: const Text('Kubus'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CylinderPage()),
                );
              },
              child: const Text('Tabung'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConePage()),
                );
              },
              child: const Text('Kerucut'),
            ),
          ],
        ),
      ),
    );
  }
}

class CubePage extends StatefulWidget {
  const CubePage({super.key});

  @override
  _CubePageState createState() => _CubePageState();
}

class _CubePageState extends State<CubePage> {
  final TextEditingController _sideController = TextEditingController();
  double _volume = 0;

  void _calculateVolume() {
    double side = double.tryParse(_sideController.text) ?? 0;
    setState(() {
      _volume = side * side * side;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volume Kubus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sideController,
              decoration: const InputDecoration(labelText: 'Sisi'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateVolume,
              child: const Text('Hitung Volume'),
            ),
            const SizedBox(height: 20),
            Text('Volume: $_volume'),
          ],
        ),
      ),
    );
  }
}

class CylinderPage extends StatefulWidget {
  const CylinderPage({super.key});

  @override
  _CylinderPageState createState() => _CylinderPageState();
}

class _CylinderPageState extends State<CylinderPage> {
  final TextEditingController _radiusController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double _volume = 0;

  void _calculateVolume() {
    double radius = double.tryParse(_radiusController.text) ?? 0;
    double height = double.tryParse(_heightController.text) ?? 0;
    setState(() {
      _volume = 3.14159 * radius * radius * height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volume Tabung'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _radiusController,
              decoration: const InputDecoration(labelText: 'Jari-jari'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _heightController,
              decoration: const InputDecoration(labelText: 'Tinggi'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateVolume,
              child: const Text('Hitung Volume'),
            ),
            const SizedBox(height: 20),
            Text('Volume: $_volume'),
          ],
        ),
      ),
    );
  }
}

class ConePage extends StatefulWidget {
  const ConePage({super.key});

  @override
  _ConePageState createState() => _ConePageState();
}

class _ConePageState extends State<ConePage> {
  final TextEditingController _radiusController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double _volume = 0;

  void _calculateVolume() {
    double radius = double.tryParse(_radiusController.text) ?? 0;
    double height = double.tryParse(_heightController.text) ?? 0;
    setState(() {
      _volume = (1 / 3) * 3.14159 * radius * radius * height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volume Kerucut'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _radiusController,
              decoration: const InputDecoration(labelText: 'Jari-jari'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _heightController,
              decoration: const InputDecoration(labelText: 'Tinggi'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateVolume,
              child: const Text('Hitung Volume'),
            ),
            const SizedBox(height: 20),
            Text('Volume: $_volume'),
          ],
        ),
      ),
    );
  }
}
