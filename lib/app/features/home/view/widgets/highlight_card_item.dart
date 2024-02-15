import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/utils/utils.dart';
import 'package:relight/app/features/highlights/models/highlight_model.dart';
import 'package:relight/app/features/home/notifiers/home_state_notifier.dart';
import 'package:relight/app/features/home/view/widgets/highlight_card_simple_dialog.dart';

class HighlightCardItem extends ConsumerWidget {
  const HighlightCardItem({
    required this.itemCount,
    required this.highlight,
    super.key,
  });

  final int itemCount;

  final Highlight highlight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return highlight.urlMetadata != null
        ? HighlightUrlItem(highlight: highlight)
        : GestureDetector(
            onTap: () {
              showHighlightMenu(
                context,
                ref,
              );
            },
            child: Card(
              color: AppColors.secondaryGrey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Text(
                            highlight.sourceId,
                            style: const TextStyle(
                              color: AppColors.lightGrey,
                              fontSize: 12,
                            ),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                showHighlightMenu(
                                  context,
                                  ref,
                                );
                              },
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      highlight.plainContent,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  void showHighlightMenu(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return HighlightCardSimpleDialog(highlight: highlight);
      },
    );
  }
}

class HighlightUrlItem extends ConsumerWidget {
  const HighlightUrlItem({required this.highlight, super.key});

  final Highlight highlight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) => HighlightCardSimpleDialog(highlight: highlight),
        );
      },
      child: Card(
        color: AppColors.secondaryGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Text(
                      highlight.urlMetadata?.url ?? '',
                      style: const TextStyle(
                        color: AppColors.lightGrey,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () => showMenu(
                          context: context,
                          position: const RelativeRect.fromLTRB(150, 5, 50, 5),
                          items: [
                            PopupMenuItem(
                              child: const Text('Edit'),
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: const Text('Delete'),
                              onTap: () {
                                ref
                                    .read(homeStateProvider.notifier)
                                    .deleteHighlight(highlight.id!);
                              },
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                highlight.urlMetadata?.title ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
