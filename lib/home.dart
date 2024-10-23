import 'package:flutter/material.dart';
import 'package:flutter_application_1/latihan2_page.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'latihan_page.dart';
import 'dana.dart';
import 'shoopepay.dart'; // Import the ShopeePay page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 91, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Belajar Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Function to navigate to LatihanPage
  void _navigateToLatihanPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LatihanPage()),
    );
  }

  // Function to navigate to DanaHomePage
  void _navigateTodana(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DanaHomePage()),
    );
  }

  // Function to navigate to LoginPage from latihan2_page.dart
  void _navigateToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  // Function to navigate to ShopeePay page
  void _navigateToShoopepayPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ShoopepayPage()),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageSlideshow(
              width: double.infinity,
              height: 200,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              children: [
                Image.network(
                  'https://example.com/image1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://example.com/image2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://example.com/image3.jpg',
                  fit: BoxFit.cover,
                ),
              ],
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
            ),
            const Text(
              'ngapain sih?',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToLatihanPage(context),
              child: const Text('Pindah ke Halaman Latihan'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateTodana(context),
              child: const Text('Pindah ke Halaman Dana Home'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToLoginPage(context), // Button to navigate to LoginPage
              child: const Text('Pindah ke Halaman Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToshoopepay(context), // Button to navigate to ShopeePay
              child: const Text('Pindah ke Halaman ShopeePay'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

_navigateToshoopepay(BuildContext context) {
}

// class shoopepayPage {
//   const shoopepayPage();
// }
