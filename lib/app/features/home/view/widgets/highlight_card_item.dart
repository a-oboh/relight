import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/utils/utils.dart';
import 'package:relight/app/features/highlights/models/highlight_model.dart';
import 'package:relight/app/features/home/notifiers/home_state_notifier.dart';
import 'package:url_launcher/url_launcher.dart';

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
        ? HighlightUrlItem(data: highlight)
        : Card(
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
                              position:
                                  const RelativeRect.fromLTRB(150, 5, 50, 5),
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

class HighlightUrlItem extends ConsumerWidget {
  const HighlightUrlItem({required this.data, super.key});

  final Highlight data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        if (!await launchUrl(Uri.parse(data.urlMetadata?.url ?? ''))) {
          throw Exception('Could not launch ${data.urlMetadata?.url}');
        }
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
                      data.urlMetadata?.url ?? '',
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
                                    .deleteHighlight(data.id!);
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
                data.urlMetadata?.title ?? '',
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
