import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quill_html_converter/quill_html_converter.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';
import 'package:relight/app/features/highlights/view/widget/rich_editor.dart';

class EditHighlight extends ConsumerStatefulWidget {
  const EditHighlight({required this.highlight, super.key});

  final Highlight highlight;

  @override
  ConsumerState<EditHighlight> createState() => _EditHighlightState();
}

class _EditHighlightState extends ConsumerState<EditHighlight> {
  late QuillController quillController;

  @override
  void initState() {
    super.initState();
    quillController = QuillController(
      document: Document.fromDelta(Document.fromHtml(widget.highlight.content)),
      selection: const TextSelection(baseOffset: 0, extentOffset: 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(homeStateProvider, (previous, next) {
      next.status.whenOrNull(
        initial: () {},
        loading: () {
          if (previous?.status.isLoading == false) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const LoadingDialog(),
            );
          }
        },
        error: (errorText, _) {
          if (previous?.status.isLoading ?? false) {
            context.pop();
          }

          showDialog<void>(
            context: context,
            builder: (_) {
              return SimpleDialog(
                backgroundColor: AppColors.darkGrey2,
                children: [
                  Text(errorText ?? ''),
                  const SizedBox(height: 12),
                  AppBasicButton(
                    title: 'Done',
                    onTap: () {
                      context.pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit highlight'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
              child: RichEditor(quillController: quillController),
            ),
          ),
          const Spacer(),
          AppBasicButton(
            title: 'Done',
            onTap: () {
              ref
                  .read(homeStateProvider.notifier)
                  .editHighlight(
                    id: widget.highlight.id!,
                    highlight: widget.highlight.copyWith(
                      content: quillController.document.toDelta().toHtml(),
                      plainContent: quillController.document.toPlainText(),
                    ),
                  )
                  .then(
                (state) {
                  state.status.whenOrNull(
                    initial: () {
                      var i = 0;
                      while (i < 3) {
                        GoRouter.of(context).pop();
                        i++;
                      }
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
