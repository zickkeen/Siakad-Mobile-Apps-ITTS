import 'package:flutter/material.dart';
import '../widgets/page_template.dart';

class JadwalKuliahPage extends StatelessWidget {
  const JadwalKuliahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data jadwal kuliah
    final List<Map<String, String>> schedule = [
      {
        'Hari': 'Senin',
        'Waktu': '17:00 - 19:00',
        'Matkul': 'Pengembangan Aplikasi Berbasis Web',
        'Dosen': 'Muhamad Yusuf, S.Kom., M.Kom.',
        'Meeting ID': '880 5827 0840',
        'Pass': '133650',
      },
      {
        'Hari': 'Senin',
        'Waktu': '19:00 - 21:00',
        'Matkul': 'Audit Tata Kelola TI',
        'Dosen': 'Dhika Rizki Anbiya, S.Kom., M.T.',
        'Meeting ID': '893 6920 2487',
        'Pass': '784770',
      },
      {
        'Hari': 'Selasa',
        'Waktu': '17:00 - 19:00',
        'Matkul': 'Arsitektur & Organisasi Komputer',
        'Dosen': 'Junaidi, S.Kom., M.Kom.',
        'Meeting ID': '823 9215 4986',
        'Pass': '152568',
      },
      {
        'Hari': 'Selasa',
        'Waktu': '19:00 - 21:00',
        'Matkul': 'Pengujian Perangkat Lunak',
        'Dosen': 'Samsul Bahri, S.Kom., M.Kom.',
        'Meeting ID': '861 1974 5967',
        'Pass': '231950',
      },
      {
        'Hari': 'Rabu',
        'Waktu': '19:00 - 21:00',
        'Matkul': 'Etika Profesi',
        'Dosen': 'Tubagus Toifur, S.Kom., M.Kom.',
        'Meeting ID': '868 6760 5452',
        'Pass': '704319',
      },
      {
        'Hari': 'Kamis',
        'Waktu': '17:00 - 19:00',
        'Matkul': 'Pemrograman Internet of Things (IoT)',
        'Dosen': 'Aolia Ikhwanudin, S.Kom., M.Kom.',
        'Meeting ID': '838 3296 6559',
        'Pass': '374710',
      },
      {
        'Hari': 'Kamis',
        'Waktu': '19:00 - 21:00',
        'Matkul': 'Pemrograman Aplikasi Mobile',
        'Dosen': 'Taufik Iqbal Ramdhani, S.Kom., M.Sc.',
        'Meeting ID': '884 1830 8165',
        'Pass': '056290',
      },
      {
        'Hari': 'Jumat',
        'Waktu': '17:00 - 19:00',
        'Matkul': 'Interoperabilitas',
        'Dosen': 'Anas Nasrulloh, S.Kom., M.Kom.',
        'Meeting ID': '828 4824 9897',
        'Pass': '032279',
      },
      {
        'Hari': 'Jumat',
        'Waktu': '19:00 - 21:00',
        'Matkul': 'Keamanan Informasi & Jaringan',
        'Dosen': 'Hafizhan Irawan',
        'Meeting ID': '835 2466 3227',
        'Pass': '833904',
      },
    ];

    return PageTemplate(
      title: 'Jadwal Kuliah',
      content: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.blue), // Header biru
              columns: const [
                DataColumn(
                  label: Text(
                    'Hari',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Tulisan putih
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Waktu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Mata Kuliah',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Dosen',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Meeting ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Pass',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              rows: schedule.map((item) {
                return DataRow(cells: [
                  DataCell(Text(item['Hari'] ?? '-')),
                  DataCell(Text(item['Waktu'] ?? '-')),
                  DataCell(Text(item['Matkul'] ?? '-')),
                  DataCell(Text(item['Dosen'] ?? '-')),
                  DataCell(Text(item['Meeting ID'] ?? '-')),
                  DataCell(Text(item['Pass'] ?? '-')),
                ]);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
