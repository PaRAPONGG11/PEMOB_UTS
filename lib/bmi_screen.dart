// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class bmiScreen extends StatefulWidget {
  const bmiScreen({super.key});

  @override
  _bmiScreenState createState() => _bmiScreenState();
}

// ignore: camel_case_types
class _bmiScreenState extends State<bmiScreen> {
  TextEditingController beratController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  double bmiResult = 0.0;
  String bmiStatus = '';

  void calculateBMI() {
    double berat = double.parse(beratController.text);
    double tinggi =
        double.parse(tinggiController.text) / 100; // Convert cm to meters
    double bmi = berat / (tinggi * tinggi);
    setState(() {
      bmiResult = bmi;
      if (bmi < 18.5) {
        bmiStatus = 'Kurang Gizi';
      } else if (bmi >= 18.5 && bmi < 25) {
        bmiStatus = 'Ideal';
      } else if (bmi >= 25 && bmi < 30) {
        bmiStatus = 'Sangat Berat';
      } else {
        bmiStatus = 'Obesitas';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penghitung BMI',
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 142, 255),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Masukkan berat badan (kg):'),
              TextField(
                controller: beratController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),
              Text('Masukkan tinggi badan (cm):'),
              TextField(
                controller: tinggiController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  calculateBMI();
                },
                child: Text('Hitung BMI'),
              ),
              SizedBox(height: 16.0),
              Text('BMI: ${bmiResult.toStringAsFixed(2)}'),
              Text('Status: $bmiStatus'),
            ],
          ),
        ),
      ),
    );
  }
}
