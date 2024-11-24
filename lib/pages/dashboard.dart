import 'package:flutter/material.dart';
import 'jadwal_kuliah_page.dart';
import 'nilai_page.dart';
import 'profil_page.dart';
import 'pengaturan_page.dart';
import 'info_page.dart';
import 'input_data_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(20),
      children: [
        _buildMenuItem(context, Icons.schedule, 'Jadwal Kuliah', const JadwalKuliahPage()),
        _buildMenuItem(context, Icons.grade, 'Nilai', const NilaiPage()),
        _buildMenuItem(context, Icons.person, 'Profil', const ProfilPage()),
        _buildMenuItem(context, Icons.settings, 'Pengaturan', const PengaturanPage()),
        _buildMenuItem(context, Icons.info, 'Info Aplikasi', const InfoPage()),
        _buildMenuItem(context, Icons.input, 'Input Data', const InputDataPage()),
      ],
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String title, Widget page) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.indigo),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
