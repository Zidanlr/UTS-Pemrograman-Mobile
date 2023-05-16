import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Memperluas body di belakang AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Latar belakang transparan
        elevation: 0, // Menghilangkan bayangan AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2F58CD), Color(0xFFACB1D6)], // Gradasi warna dari blue ke purple
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Image.asset(
                  'images/logo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 20),
                Text(
                  "BurgerCoy",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Mengatur warna teks menjadi putih
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Selamat Datang Di Aplikasi BurgerCoy :)",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white, // Mengatur warna teks menjadi putih
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Perform login logic here
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text('Create an account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
