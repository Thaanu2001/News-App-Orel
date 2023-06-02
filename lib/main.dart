import 'package:flutter/material.dart';

import 'core/service_locator/service_locator.dart';
import 'features/bottom_navbar/presentation/screens/bottom_navbar_page.dart';

void main() {
  setupLocator();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App Orel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: const BottomNavbarPage(),
    );
  }
}
