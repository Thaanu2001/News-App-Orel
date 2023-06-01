import 'package:flutter/material.dart';

import '../../features/business/presentation/screens/business_page.dart';
import '../../features/science/presentation/screens/science_page.dart';
import '../../features/technology/presentation/screens/technology_page.dart';

class AppConstants {
  static const Color primaryColor = Color(0xffe4c800);
  static const Color greyColor = Color(0xffa5a3ac);

  static const List<Widget> bottomNavbarItems = [
    SciencePage(),
    BusinessPage(),
    TechnologyPage(),
  ];
}
