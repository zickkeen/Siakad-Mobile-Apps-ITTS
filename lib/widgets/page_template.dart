import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  final String title;
  final Widget content;

  const PageTemplate({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: content,
      ),
    );
  }
}
