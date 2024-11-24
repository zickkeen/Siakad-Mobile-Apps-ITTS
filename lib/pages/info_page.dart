import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang SIAKAD ITTS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'SIAKAD ITTS',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Sistem Informasi Akademik ITTS adalah platform untuk mengelola jadwal kuliah, nilai, profil mahasiswa, '
              'dan pengaturan lainnya yang dirancang untuk memudahkan akses informasi akademik bagi mahasiswa.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/logo_itts.png', // Path ke file asset
              height: 150,           // Tinggi gambar
            ),
          ],
        ),
      ),
    );
  }
}
