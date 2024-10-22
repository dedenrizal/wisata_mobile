import 'package:flutter/material.dart';

class Mystatefullwidget extends StatefulWidget{
  const Mystatefullwidget({super.key});

  @override
  State<StatefulWidget> createState() => Mystatefullwidgetstate();
  

  
}

class Mystatefullwidgetstate extends State<Mystatefullwidget>{

  var _hitung = 1;
  void tambahAngka(){
    setState(() {
      _hitung*=10;
    });
  }
  @override
  Widget build(BuildContext context){

  return MaterialApp(
    title : 'contoh',
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text('$_hitung'),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){tambahAngka();}, child: Text('tambahkan data'),)
      ],
    ),
  );
  }
  

}