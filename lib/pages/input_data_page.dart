import 'package:flutter/material.dart';
import '../main.dart'; // Untuk akses global isDarkMode

class InputDataPage extends StatefulWidget {
  const InputDataPage({super.key});

  @override
  State<InputDataPage> createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  String? _nim;
  String? _name;

  void _showData() {
    setState(() {
      _nim = _nimController.text.trim();
      _name = _nameController.text.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkMode, // Mengikuti state global dark mode
      builder: (context, isDark, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Input Data'),
            backgroundColor: isDark ? Colors.black : Colors.indigo,
          ),
          body: Container(
            color: isDark ? Colors.black : Colors.white,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  controller: _nimController,
                  decoration: InputDecoration(
                    labelText: 'Masukkan NIM',
                    labelStyle: TextStyle(color: isDark ? Colors.white : Colors.black),
                    border: const OutlineInputBorder(),
                  ),
                  style: TextStyle(color: isDark ? Colors.white : Colors.black),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Nama',
                    labelStyle: TextStyle(color: isDark ? Colors.white : Colors.black),
                    border: const OutlineInputBorder(),
                  ),
                  style: TextStyle(color: isDark ? Colors.white : Colors.black),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _showData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Tetap biru
                    foregroundColor: Colors.white, // Tetap putih
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Tampilkan Data'),
                ),
                const SizedBox(height: 20),
                if (_nim != null && _name != null) ...[
                  Text(
                    'NIM: $_nim',
                    style: TextStyle(color: isDark ? Colors.white : Colors.black),
                  ),
                  Text(
                    'Nama: $_name',
                    style: TextStyle(color: isDark ? Colors.white : Colors.black),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
