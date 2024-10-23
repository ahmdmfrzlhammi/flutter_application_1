import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PulsaPage(),
    );
  }
}

class PulsaPage extends StatefulWidget {
  @override
  _PulsaPageState createState() => _PulsaPageState();
}

class _PulsaPageState extends State<PulsaPage> {
  final List<Map<String, String>> pulsaOptions = [
    {'nominal': '1rb', 'harga': 'Rp1.900'},
    {'nominal': '2rb', 'harga': 'Rp2.800'},
    {'nominal': '3rb', 'harga': 'Rp3.800'},
    {'nominal': '5rb', 'harga': 'Rp6.800'},
    {'nominal': '8rb', 'harga': 'Rp8.800'},
    {'nominal': '10rb', 'harga': 'Rp10.500'},
    {'nominal': '15rb', 'harga': 'Rp9.500'},
    {'nominal': '20rb', 'harga': 'Rp21.095'},
    {'nominal': '25rb', 'harga': 'Rp19.500'},
    {'nominal': '30rb', 'harga': 'Rp31.000'},
    {'nominal': '40rb', 'harga': 'Rp40.500'},
    {'nominal': '50rb', 'harga': 'Rp44.500'},
    {'nominal': '60rb', 'harga': 'Rp60.500'},
    {'nominal': '70rb', 'harga': 'Rp70.500'},
  ];

  // Create a TextEditingController to manage the phone number input
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pulsa'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.sim_card),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2,
              ),
              itemCount: pulsaOptions.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(pulsaOptions[index]['nominal']!,
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 4),
                      Text(pulsaOptions[index]['harga']!,
                          style: TextStyle(fontSize: 14, color: Colors.red)),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Access the phone number entered by the user
                String phoneNumber = _phoneController.text;
                // Handle checkout action with the phoneNumber
                print('Phone number entered: $phoneNumber');
              },
              child: Text('Checkout'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    
    );
  }
}
