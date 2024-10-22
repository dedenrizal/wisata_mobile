import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'contoh',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ini contoh"),
          backgroundColor: Colors.green[300],
        ),
        body: Center(
          child : Text("ini halaman utama")
        ),
        
      ),

    );
  }
}