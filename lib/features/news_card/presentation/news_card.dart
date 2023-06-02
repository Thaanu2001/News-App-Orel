import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/model/news_model.dart';

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: AppConstants.primaryColor),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: AppConstants.greenColor),
            ),
            child: ClipOval(
              child: Image.network(
                news.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              children: [
                Text(
                  news.content,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: AppConstants.darkGreyColor,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'author - ${news.author}',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppConstants.greyColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
