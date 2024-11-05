import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f3f5),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network('https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json',width: 350,height: 350),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 300,),
                Text('what ',
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, 
                color: Color(0xff1b1b1b)),
                ),
                 Text('tarvel',
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, 
                color: Color(0xff1b1b1b)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}