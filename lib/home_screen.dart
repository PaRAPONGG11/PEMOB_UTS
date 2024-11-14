import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Homepage',
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 142, 255),
      ),
      body: ListView(
        children: [
          // ListView.builder horizontal
          // SizedBox(
          //   height: 200, // Ganti dengan tinggi yang sesuai
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 10, // Ganti dengan jumlah item yang sesuai
          //     itemBuilder: (BuildContext context, int index) {
          //       // Buat item horizontal di sini
          //       return Container(
          //         width: 150, // Sesuaikan lebar item
          //         margin: EdgeInsets.all(8.0),
          //         color: Colors.blue,
          //         child: Center(
          //           child: Text('Item $index'),
          //         ),
          //       );
          //     },
          //   ),
          // ),

          // ListView.builder vertikal
          // SizedBox(
          //   height: 400, // Ganti dengan tinggi yang sesuai
          //   child: ListView.builder(
          //     itemCount: 20, // Ganti dengan jumlah item yang sesuai
          //     itemBuilder: (BuildContext context, int index) {
          //       // Buat item vertikal di sini
          //       return ListTile(
          //         title: Text('Item $index'),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
