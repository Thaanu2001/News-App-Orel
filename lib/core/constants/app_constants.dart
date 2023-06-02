import 'package:flutter/material.dart';

import '../../features/business/presentation/screens/business_page.dart';
import '../../features/science/presentation/screens/science_page.dart';
import '../../features/technology/presentation/screens/technology_page.dart';

class AppConstants {
  static const Color primaryColor = Color(0xffe4c800);
  static const Color greyColor = Color(0xffa5a3ac);
  static const Color darkGreyColor = Color(0xff707076);
  static const Color whiteColor = Color(0xffffffff);
  static const Color greenColor = Color(0xff62a0ac);

  static const double defaultHorizontalMargin = 24;

  static const List<Widget> bottomNavbarItems = [
    SciencePage(),
    BusinessPage(),
    TechnologyPage(),
  ];

  static const String newsApi =
      'https://inshorts-news-pme7417gz-sumanjay.vercel.app/news';
}
