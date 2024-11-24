import 'package:flutter/material.dart';
import '../widgets/page_template.dart';

class NilaiPage extends StatelessWidget {
  const NilaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data nilai mahasiswa
    final List<Map<String, String>> grades = [
      {
        'No': '1',
        'Kode': 'TI126',
        'Mata Kuliah': 'BIG DATA AND ANALYTIC',
        'SKS': '3',
        'Nilai Huruf': 'A',
        'Bobot': '4',
        'Mutu': '12',
      },
      {
        'No': '2',
        'Kode': 'TI128',
        'Mata Kuliah': 'CLOUD COMPUTING',
        'SKS': '2',
        'Nilai Huruf': 'A',
        'Bobot': '4',
        'Mutu': '8',
      },
      {
        'No': '3',
        'Kode': 'TI122',
        'Mata Kuliah': 'DATA WAREHOUSE AND BUSINESS INTELLIGENCE',
        'SKS': '3',
        'Nilai Huruf': 'A',
        'Bobot': '4',
        'Mutu': '12',
      },
      {
        'No': '4',
        'Kode': 'TI124',
        'Mata Kuliah': 'INFORMATION TECHNOLOGY ETHIC, REGULATION AND CYBER LAW',
        'SKS': '3',
        'Nilai Huruf': 'A',
        'Bobot': '4',
        'Mutu': '12',
      },
      {
        'No': '5',
        'Kode': 'TI123',
        'Mata Kuliah': 'KOMUNIKASI DATA',
        'SKS': '3',
        'Nilai Huruf': 'A',
        'Bobot': '4',
        'Mutu': '12',
      },
      {
        'No': '6',
        'Kode': 'TI127',
        'Mata Kuliah': 'REKAYASA PERANGKAT LUNAK',
        'SKS': '3',
        'Nilai Huruf': 'A',
        'Bobot': '4',
        'Mutu': '12',
      },
      {
        'No': '7',
        'Kode': 'TI125',
        'Mata Kuliah': 'TEKNIK BASIS DATA',
        'SKS': '3',
        'Nilai Huruf': 'A',
        'Bobot': '4',
        'Mutu': '12',
      },
    ];

    return PageTemplate(
      title: 'Nilai',
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tabel Nilai
            Card(
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
                    headingRowColor: MaterialStateColor.resolveWith(
                        (states) => Colors.indigo.shade100),
                    columns: const [
                      DataColumn(label: Text('No', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Kode', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Mata Kuliah', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('SKS', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Nilai Huruf', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Bobot', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Mutu', style: TextStyle(fontWeight: FontWeight.bold))),
                    ],
                    rows: grades.map((item) {
                      return DataRow(cells: [
                        DataCell(Text(item['No'] ?? '-')),
                        DataCell(Text(item['Kode'] ?? '-')),
                        DataCell(Text(item['Mata Kuliah'] ?? '-')),
                        DataCell(Text(item['SKS'] ?? '-')),
                        DataCell(Text(item['Nilai Huruf'] ?? '-')),
                        DataCell(Text(item['Bobot'] ?? '-')),
                        DataCell(Text(item['Mutu'] ?? '-')),
                      ]);
                    }).toList(),
                  ),
                ),
              ),
            ),

            // Statistik Nilai
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: StatisticCard(
                    title: 'Jumlah SKS',
                    value: '20',
                    icon: Icons.book,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: StatisticCard(
                    title: 'IPS',
                    value: '4.00',
                    icon: Icons.star_rate,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Expanded(
                  child: StatisticCard(
                    title: 'Mata Kuliah',
                    value: '7',
                    icon: Icons.class_,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: StatisticCard(
                    title: 'IPK',
                    value: '3.78',
                    icon: Icons.grade,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StatisticCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const StatisticCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
