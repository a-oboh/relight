import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quill_html_converter/quill_html_converter.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class CreateHighlight extends ConsumerStatefulWidget {
  const CreateHighlight({super.key});

  @override
  ConsumerState<CreateHighlight> createState() => _CreateHighlightState();
}

class _CreateHighlightState extends ConsumerState<CreateHighlight> {
  final PageController _pageController = PageController();
  final quillController = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    final highlightState = ref.watch(highlightStateProvider);

    ref.listen(highlightStateProvider, (prev, state) {
      state.loadedSourcesStatus.whenOrNull(
        initial: () {},
        loading: () {},
      );
      if (prev!.isLoadingSources == false && state.isLoadingSources) {
        showDialog(
          context: context,
          builder: (_) => const LoadingDialog(),
        );
      } else if (prev.isLoadingSources && state.isLoadingSources) {
        ref.read(homeStateProvider.notifier).loadHighlights();
        context
          ..pop()
          ..push(
            RelightRouter.selectHighlightSource,
            extra: SelectSourceArgs(
              savedSources: state.loadedSources,
              highlightContent: quillController.document.toDelta().toHtml(),
              highlightPlainContent: quillController.document.toPlainText(),
            ),
          );
      }
    });

    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          ref.invalidate(highlightStateProvider);
          return true;
        },
        child: Scaffold(
          backgroundColor: AppColors.dark,
          body: HighlightRichEditor(
            quillController: quillController,
          ),
        ),
      ),
    );
  }
}

class HighlightRichEditor extends ConsumerStatefulWidget {
  const HighlightRichEditor({required this.quillController, super.key});

  final QuillController quillController;

  @override
  ConsumerState<HighlightRichEditor> createState() =>
      _HighlightRichEditorState();
}

class _HighlightRichEditorState extends ConsumerState<HighlightRichEditor> {
  @override
  Widget build(BuildContext context) {
    final highlightState = ref.watch(highlightStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Highlight'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            RichEditor(quillController: widget.quillController),
            const Spacer(),
            AppBasicButton(
              title: 'Next',
              onTap: () async {
                if (widget.quillController.document.toPlainText().length > 3) {
                  ref.read(highlightStateProvider.notifier).changeState(
                        highlightState.copyWith(
                          loadedSourcesStatus: const BaseStatus.loading(),
                        ),
                      );
                  await ref
                      .read(highlightStateProvider.notifier)
                      .loadBookSources();
                } else {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
