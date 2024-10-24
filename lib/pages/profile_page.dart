import 'package:flutter/material.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String nim;
  final String email;
  final String address;

  const ProfilePage({
    Key? key,
    required this.name,
    required this.nim,
    required this.email,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/zeus.jpg'),
            ),
            SizedBox(height: 20),
            Text('Nama: $name'),
            Text('NIM: $nim'),
            Text('Email: $email'),
            Text('Alamat: $address'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Kembali ke halaman login
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (Route<dynamic> route) => false,
                );
              },
              child: Text('Keluar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
