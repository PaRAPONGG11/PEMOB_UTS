import 'package:flutter/material.dart';
import 'package:pemob_uts/login.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Profil Pembuat',
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 142, 255),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 55,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/ipeung.jpg'),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UserProfileField("Nama Lengkap", "Irfan Satria Supriadi"),
                    UserProfileField("NIM", "15-2022-026"),
                    UserProfileField("Jurusan", "Informatika"),
                    UserProfileField("Alamat", "Bandung"),
                    SizedBox(
                        height: 20), // Tambahkan SizedBox untuk jarak pemisah
                    Center(
                      // Tambahkan widget Center untuk membuat tombol berada di tengah horizontal
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(80, 59, 163, 1),
                          ),
                          child: Center(
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfileField extends StatelessWidget {
  final String label;
  final String value;

  const UserProfileField(this.label, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
