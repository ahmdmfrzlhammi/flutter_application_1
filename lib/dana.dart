import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import "package:url_launcher/url_launcher.dart";
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart'; // Add this import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dana UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DanaHomePage(),
    );
  }
}

class DanaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
        title: Row(
          children: [
            Text('Rp Banyak Pokoknya'),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Looking for something?',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            // Menu Utama
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMainMenuItem(Icons.qr_code_scanner, 'Scan'),
                  _buildMainMenuItem(Icons.add_circle_outline, 'Top Up'),
                  _buildMainMenuItem(Icons.attach_money, 'Send'),
                  _buildMainMenuItem(Icons.request_page, 'Request'),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Promo & Layanan Populer
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.local_offer, color: Colors.red),
                      title: Text('Lazada 10.10'),
                      subtitle: Text('Diskon s/d 50%'),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        child: Text('SERBU'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Wrap(
                        alignment: WrapAlignment.spaceAround,
                        children: [
                          _buildServiceItem('Pulsa & Data', Icons.phone_android),
                          _buildServiceItem('Google Play Store', Icons.play_arrow),
                          _buildServiceItem('A+ Rewards', Icons.card_giftcard),
                          _buildServiceItem('Games', Icons.games),
                          _buildServiceItem('BPJS Kesehatan', Icons.health_and_safety),
                          _buildServiceItem('DANA Deals', Icons.local_offer),
                          _buildServiceItem('Electricity', Icons.electric_bolt),
                          _buildServiceItem('View All', Icons.more_horiz),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            // Feed Aktivitas Teman
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('Feed'),
                      subtitle: Text('Find out what your friends are up to!'),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        child: Text('EXPLORE'),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text('Your Friend just received Pulsa Voucher'),
                      subtitle: Text('from DANA Surprize'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Slideshow Images
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ImageSlideshow(
                width: double.infinity,
                height: 200,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover,
                  ),
                  // Image.network(
                  //   'https://example.com/image3.jpg',
                  //   fit: BoxFit.cover,
                  // ),
                ],
                onPageChanged: (value) {
                  print('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat ikon menu utama
  Widget _buildMainMenuItem(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[100],
          radius: 30,
          child: Icon(icon, color: Colors.blue[800], size: 30),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  // Fungsi untuk membuat layanan populer
  Widget _buildServiceItem(String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue[50],
            child: Icon(icon, color: Colors.blue[800]),
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
