import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class RichEditor extends ConsumerWidget {
  const RichEditor({
    required this.quillController,
    super.key,
  });

  final QuillController quillController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        QuillToolbar.simple(
          configurations: QuillSimpleToolbarConfigurations(
            controller: quillController,
            showCenterAlignment: false,
            showSubscript: false,
            showSuperscript: false,
            showInlineCode: false,
            showStrikeThrough: false,
            showFontFamily: false,
            showCodeBlock: false,
            showIndent: false,
            showBackgroundColorButton: false,
          ),
        ),
        const Gap(16),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: QuillEditor.basic(
              configurations: QuillEditorConfigurations(
                controller: quillController,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
