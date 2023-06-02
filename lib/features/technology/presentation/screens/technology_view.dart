import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../widgets/news_list_widget.dart';

class TechnologyView extends StatelessWidget {
  const TechnologyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 22,
              bottom: 20,
            ),
            color: AppConstants.primaryColor,
            alignment: Alignment.topCenter,
            child: const Text(
              'NEWS',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppConstants.whiteColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 56,
            ),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppConstants.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                left: AppConstants.defaultHorizontalMargin,
                right: AppConstants.defaultHorizontalMargin,
                top: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Technology',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Here is your technology news',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppConstants.greyColor,
                    ),
                  ),
                  SizedBox(height: 14),
                  Flexible(child: NewsListWidget()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
