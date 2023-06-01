import 'package:flutter/material.dart';

import 'features/bottom_navbar/presentation/screens/bottom_navbar_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'News App Orel',
      debugShowCheckedModeBanner: false,
      home: BottomNavbarPage(),
    );
  }
}
