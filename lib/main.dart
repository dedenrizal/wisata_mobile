import 'package:flutter/material.dart';
import 'package:wisata_mobile/materimodulsscreens/pertemuan_6.dart';
import 'package:wisata_mobile/screens/splashScreen.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pertemuan6(),
    );
  }
}
