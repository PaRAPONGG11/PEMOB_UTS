import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pemob_uts/bmi_screen.dart';
import 'package:pemob_uts/calculator_screen.dart';
import 'package:pemob_uts/nilai_screen.dart';
import 'package:pemob_uts/panjang_screen.dart';
import 'package:pemob_uts/suhu_screen.dart';
import 'package:pemob_uts/uang_screen.dart';

class ListHalaman extends StatefulWidget {
  const ListHalaman({super.key});

  @override
  _ListHalamanState createState() => _ListHalamanState();
}

class _ListHalamanState extends State<ListHalaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Menu Perhitungan',
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 142, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bmiScreen()),
                  );
                },
                leading: Icon(
                  Icons.data_exploration,
                  size: 40,
                ),
                title: Text('Hitung BMI'),
                subtitle: Text('Page untuk menghitung BMI'),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => calculatorScreen()),
                  );
                },
                leading: Icon(
                  Icons.calculate,
                  size: 40,
                ),
                title: Text('Kalkulator'),
                subtitle: Text('Page kalkulator virtual'),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const uangScreen()),
                  );
                },
                leading: Icon(
                  Icons.attach_money,
                  size: 40,
                ),
                title: Text('Konversi Mata Uang'),
                subtitle: Text('Page untuk konversi mata uang'),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const suhuScreen()),
                  );
                },
                leading: Icon(
                  Icons.thermostat,
                  size: 40,
                ),
                title: Text('Konversi Suhu'),
                subtitle: Text('Page untuk konversi suhu'),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => panjangScreen()),
                  );
                },
                leading: Icon(
                  Icons.medical_information,
                  size: 40,
                ),
                title: Text('Konversi Satuan Panjang'),
                subtitle: Text('Page untuk konversi satuan panjang'),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nilaiScreen()),
                  );
                },
                leading: Icon(
                  Icons.book,
                  size: 40,
                ),
                title: Text('Index Nilai Akhir'),
                subtitle: Text('Page untuk mengkalkulasi nilai akhir'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
