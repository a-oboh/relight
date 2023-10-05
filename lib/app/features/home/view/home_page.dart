import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/features/home/view/widgets/widgets.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          sliver: SliverList.separated(
            itemCount: 4,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (_, count) {
              return HighlightCardItem(
                itemCount: count,
                highlightText: 'Highlights here',
                highlightTitle: 'Book of highlights',
              );
            },
          ),
        ),
      ],
    );
  }
}
