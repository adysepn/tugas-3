import 'package:flutter/material.dart';
import 'package:pertemuan3/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pertemuan3/account_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var namauser, password;
  void _loadAccount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namauser = prefs.getString('username');
    password = prefs.getString('password');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _loadAccount();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AccountPage()),
              );
            },
            child: const Row(
              children: [
                Icon(Icons.account_circle), // Icon profil
                SizedBox(width: 4), // Spasi antara ikon dan teks
                Text('Akun'),
                SizedBox(width: 8),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Text('Ini adalah halaman User $namauser'),
      ),
      drawer: const Sidemenu(),
    );
  }
}
