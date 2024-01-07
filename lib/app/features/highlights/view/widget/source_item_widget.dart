import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class SourceItemWidget extends ConsumerWidget {
  const SourceItemWidget(
      {required this.source,
      required this.highlightContent,
      required this.highlightPlainContent,
      super.key});

  final HighlightSource source;
  final String highlightContent;
  final String highlightPlainContent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final highlightState = ref.watch(highlightStateProvider);

    return InkWell(
      onTap: () {
        ref.read(highlightStateProvider.notifier).createHighlight(
              content: highlightContent,
              plainContent: highlightPlainContent,
              sourceId: source.id ?? '',
            );
      },
      child: Row(
        children: [
          Container(
            height: 80,
            width: 70,
            decoration: const BoxDecoration(
              color: AppColors.purpleMain,
            ),
            child: const Icon(IconlyBold.image),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(source.name),
                Text(source.author),
              ],
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
