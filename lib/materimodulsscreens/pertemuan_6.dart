import 'package:flutter/material.dart';

class Pertemuan6 extends StatefulWidget {
  const Pertemuan6({super.key});

  @override
  State<Pertemuan6> createState() => _Pertemuan6State();
}

class _Pertemuan6State extends State<Pertemuan6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("pertemuan 6 : form screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: "masukan nama",
                ),
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("jenis kelamin"),
                  Radio(
                    value: 'laki-laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
