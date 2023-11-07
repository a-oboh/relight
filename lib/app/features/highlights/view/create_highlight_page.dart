import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class CreateHighlight extends ConsumerStatefulWidget {
  const CreateHighlight({super.key});

  @override
  ConsumerState<CreateHighlight> createState() => _CreateHighlightState();
}

class _CreateHighlightState extends ConsumerState<CreateHighlight> {
  final PageController _pageController = PageController();

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
            extra: state.loadedSources,
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
          body: NewHighlightForm(pageController: _pageController),
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
              onChanged: ref
                  .read(highlightStateProvider.notifier)
                  .onHighlightValueChanged,
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
