import 'package:flutter/material.dart';
import '../widgets/page_template.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Profil',
      content: Column(
        children: [
          // Bagian Gambar Profil
          Stack(
            clipBehavior: Clip.none, 
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.blueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/profile_picture.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60), 

          // Informasi Profil
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.person, color: Colors.indigo),
                      const SizedBox(width: 10),
                      const Text(
                        'Nama:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text('Muhamad Tuhfatur Roziiqn', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      const Icon(Icons.numbers, color: Colors.indigo),
                      const SizedBox(width: 10),
                      const Text(
                        'NIM:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text('1002220021', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      const Icon(Icons.school, color: Colors.indigo),
                      const SizedBox(width: 10),
                      const Text(
                        'Prodi:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text('Teknik Informatika', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          ElevatedButton.icon(
            onPressed: () {
              // Tambahkan aksi seperti ubah foto profil
            },
            icon: const Icon(Icons.edit, color: Colors.white),
            label: const Text(
              'Edit Profil',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}
