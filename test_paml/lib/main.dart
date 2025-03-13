import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Today', style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 10),
            const Text(
              '28°C',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
             const SizedBox(height: 5), // Jarak kecil sebelum garis
            Container(
            width: 200, // Panjang garis
            height: 2, // Ketebalan garis
            color: Colors.grey[300], // Warna garis
            ),

            const SizedBox(height: 10),
            const Text('Sunny', style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, color: Colors.blue),
                SizedBox(width: 5),
                Text('5 km/h', style: TextStyle(fontSize: 16, color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Next 7 days', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(5, (index) => WeatherHourlyWidget()),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'Developed by: Fauzan Althaf Rianto',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class WeatherHourlyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.ac_unit, color: Colors.blue),
        SizedBox(height: 5),
        Text('28°C', style: TextStyle(fontSize: 16, color: Colors.black)),
        SizedBox(height: 5),
        Icon(Icons.air, color: Colors.pink),
        SizedBox(height: 5),
        Text('10 km/h', style: TextStyle(fontSize: 14, color: Colors.black)),
        SizedBox(height: 5),
        Icon(Icons.water_drop, color: Colors.black),
        SizedBox(height: 5),
        Text('0%', style: TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
