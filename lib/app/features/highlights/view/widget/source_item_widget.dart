import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class SourceItemWidget extends ConsumerWidget {
  const SourceItemWidget({required this.source, super.key});

  final HighlightSource source;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final highlightState = ref.watch(highlightStateProvider);

    return InkWell(
      onTap: () {
        ref.read(highlightStateProvider.notifier).createHighlight(
              content: highlightState.highlightContent ?? '',
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(source.name),
              Text(source.author),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
