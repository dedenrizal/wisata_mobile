import 'package:flutter/material.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {

  int curentIndex = 0;
  Widget dotIndicator(int index){
    return AnimatedContainer(duration: Duration(microseconds: 400),
    margin: EdgeInsets.only(right: 6),
    width: 20,
    height: 4,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
    color: index == curentIndex ? Colors.white : Colors.white54
    ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('landing page'),
    );
  }
}