import 'package:flutter/material.dart';
import '../widgets/page_template.dart';
import '../main.dart'; // Untuk akses isDarkMode

class PengaturanPage extends StatelessWidget {
  const PengaturanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Pengaturan',
      content: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.indigo),
            title: const Text('Notifikasi'),
            trailing: Switch(value: true, onChanged: (bool value) {}),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.color_lens, color: Colors.indigo),
            title: const Text('Tema Gelap'),
            trailing: ValueListenableBuilder<bool>(
              valueListenable: isDarkMode,
              builder: (context, isDark, _) {
                return Switch(
                  value: isDark,
                  onChanged: (value) {
                    isDarkMode.value = value;
                  },
                );
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.language, color: Colors.indigo),
            title: const Text('Bahasa'),
            trailing: const Text('Indonesia'),
            onTap: () {
              // Aksi ubah bahasa
            },
          ),
        ],
      ),
    );
  }
}
