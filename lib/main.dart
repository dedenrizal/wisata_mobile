import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter Dasar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Hello World'),
        ),
        body: Center(
          child: Column(  // Changed from childreen to child and wrapped in Column
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('pulan bin pulan'),
              SizedBox(
                height: 20,
              ),
              Text('55201220000'),
            ],
          ),
        ),
      ),
    );
  }
}
