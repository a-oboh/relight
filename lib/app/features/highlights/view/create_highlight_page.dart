import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
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
  // final quillController = QuillController.basic();

  // @override
  // void dispose() {
  //   quillController.dispose();
  //   super.dispose();
  // }

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
            QuillToolbar.simple(
              configurations: QuillSimpleToolbarConfigurations(
                controller: widget.quillController,
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
                    controller: widget.quillController,
                  ),
                ),
              ),
            ),
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

class NewHighlightForm extends ConsumerWidget {
  const NewHighlightForm({
    required this.pageController,
    super.key,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final highlightState = ref.watch(highlightStateProvider);
    return Form(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 40,
              ),
            ),
          ),
          //TODO(albert): add more meta for books like page number
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
            child: TextFormField(
              maxLines: 4,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Enter highlight',
              ),
              onChanged:
                  ref.read(highlightStateProvider.notifier).setHighlightValue,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please input your highlight';
                }
                return null;
              },
            ),
          ),
          const Spacer(),
          AppBasicButton(
            title: 'Next',
            onTap: () async {
              ref.read(highlightStateProvider.notifier).changeState(
                    highlightState.copyWith(
                      loadedSourcesStatus: const BaseStatus.loading(),
                    ),
                  );
              await ref.read(highlightStateProvider.notifier).loadBookSources();
            },
          ),
        ],
      ),
    );
  }
}
