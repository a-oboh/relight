import 'package:flutter/material.dart';
import 'package:relight/app/common/utils/utils.dart';

class HighlightCardItem extends StatelessWidget {
  const HighlightCardItem({
    required this.itemCount,
    required this.highlightText,
    required this.highlightTitle,
    super.key,
  });

  final int itemCount;
  final String highlightText;
  final String highlightTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryGrey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  highlightTitle,
                  style: const TextStyle(color: AppColors.lightGrey),
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Text(
            highlightText,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
