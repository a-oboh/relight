import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/highlights/models/models.dart';
import 'package:relight/app/features/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class HighlightCardSimpleDialog extends ConsumerWidget {
  const HighlightCardSimpleDialog({
    required this.highlight,
    super.key,
  });

  final Highlight highlight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      backgroundColor: AppColors.dark,
      children: [
        if (highlight.urlMetadata == null) ...[
          ListTile(
            leading: const Icon(
              Icons.open_in_new,
              color: AppColors.purpleMain,
            ),
            title: const Text('Open Highlight'),
            onTap: () {
              context.push(
                SingleHighlightPage.routePath,
                extra: highlight,
              );
            },
          ),
        ] else ...[
          ListTile(
            leading: const Icon(
              Icons.link,
              color: AppColors.purpleMain,
            ),
            title: const Text('Load Page'),
            onTap: () async {
              if (!await launchUrl(
                Uri.parse(highlight.urlMetadata?.url ?? ''),
              )) {
                throw Exception(
                  'Could not launch ${highlight.urlMetadata?.url}',
                );
              }
            },
          ),
        ],
        ListTile(
          leading: const Icon(
            Icons.edit,
            color: AppColors.purpleMain,
          ),
          title: const Text('Edit Highlight'),
          onTap: () {
            context.push(
              RelightRouter.editHighlight,
              extra: highlight,
            );
          },
        ),
        const Gap(10),
        ListTile(
          leading: const Icon(
            Icons.delete,
            color: AppColors.purpleMain,
          ),
          title: const Text('Delete Highlight'),
          onTap: () {
            ref.read(homeStateProvider.notifier).deleteHighlight(highlight.id!);
          },
        ),
      ],
    );
  }
}
