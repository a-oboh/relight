import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/utils/utils.dart';
import 'package:relight/app/features/highlights/models/highlight_model.dart';
import 'package:relight/app/features/home/notifiers/home_state_notifier.dart';

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
    return Card(
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
                      onTap: () => showMenu(
                        context: context,
                        position: const RelativeRect.fromLTRB(150, 5, 50, 5),
                        items: [
                          PopupMenuItem(
                            child: const Text('Edit'),
                            onTap: () {
                              context.push(
                                RelightRouter.editHighlight,
                                extra: highlight,
                              );
                            },
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
              highlight.plainContent,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
