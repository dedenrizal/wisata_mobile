import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DART',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Report (DART)"),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Aksi untuk membuka profil
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ringkasan Cepat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSummaryCard("Data Masuk", "50"),
                _buildSummaryCard("Laporan Hari Ini", "5"),
                _buildSummaryCard("Laporan Terbaru", "3"),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Visualisasi Data",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Placeholder untuk grafik
            Container(
              height: 150,
              color: Colors.blue[100],
              child: Center(child: Text("Grafik Data")),
            ),
            SizedBox(height: 20),
            Text(
              "Laporan Terbaru",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Placeholder untuk tabel data
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.report),
                    title: Text("Laporan 1"),
                    subtitle: Text("Tanggal: 2024-11-05"),
                  ),
                  ListTile(
                    leading: Icon(Icons.report),
                    title: Text("Laporan 2"),
                    subtitle: Text("Tanggal: 2024-11-04"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(String title, String count) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              count,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
