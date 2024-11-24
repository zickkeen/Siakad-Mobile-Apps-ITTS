import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

// State global untuk Dark Mode
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkMode,
      builder: (context, isDark, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SIAKAD ITTS',
          theme: isDark ? ThemeData.dark() : ThemeData.light(),
          home: const LoginPage(),
        );
      },
    );
  }
}
