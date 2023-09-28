import 'package:flutter/material.dart';
import 'package:pertemuan3/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Colors.greenAccent,
      ),
      body: const Center(
        child: Text('ini adalah halaman About'),
      ),
      drawer: const Sidemenu(),
    );
  }
}
