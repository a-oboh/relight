import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/utils/utils.dart';
import 'package:relight/app/common/widgets/app_back_button.dart';
import 'package:relight/app/features/highlights/highlights.dart';

class SingleHighlightPage extends ConsumerWidget {
  const SingleHighlightPage({required this.highlight, super.key});

  final Highlight highlight;

  static const routePath = '/highlight/view';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = QuillController(
      document: Document.fromDelta(Document.fromHtml(highlight.content)),
      selection: const TextSelection.collapsed(offset: 0),
    );

    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        actions: [
          GestureDetector(
            onTap: () {
              context.push(RelightRouter.editHighlight, extra: highlight);
            },
            child: const Icon(Icons.edit),
          ),
          const Gap(20),
          GestureDetector(
            onTap: () {},
            child: const Icon(Icons.favorite_border),
          ),
        ],
        title: const Text('Highlight'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            QuillEditor.basic(
              configurations: QuillEditorConfigurations(
                controller: controller,
                readOnly: true,
              ), // true for view only mode
            ),
          ],
        ),
      ),
    );
  }
}
