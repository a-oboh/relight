import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class SelectSourcePage extends ConsumerStatefulWidget {
  const SelectSourcePage({required this.savedSources, super.key});

  final List<HighlightSource> savedSources;

  @override
  ConsumerState<SelectSourcePage> createState() => _SelectSourcePageState();
}

class _SelectSourcePageState extends ConsumerState<SelectSourcePage> {
  @override
  Widget build(BuildContext context) {
    final highlightNotif = ref.watch(highlightStateProvider);

    ref.listen(highlightStateProvider, (previous, state) {
      if (state.isCreatingHighlight) {
        showDialog<void>(
          barrierDismissible: false,
          context: context,
          builder: (_) {
            return const LoadingDialog();
          },
        );
      }

      if ((previous?.isCreatingHighlight ?? false) &&
          state.createHighlightStatus is InitialBaseStatus) {
        context.pop();

        showDialog<void>(
          context: context,
          builder: (_) {
            return SimpleDialog(
              backgroundColor: AppColors.darkGrey2,
              children: [
                AppBasicButton(
                  title: 'Done',
                  onTap: () {
                    ref.invalidate(highlightStateProvider);
                    var i = 0;
                    while (i < 3) {
                      GoRouter.of(context).pop();
                      i++;
                    }
                  },
                ),
              ],
            );
          },
        );
      }
    });

    return WillPopScope(
      onWillPop: () async {
        ref.invalidate(highlightStateProvider);
        return true;
      },
      child: Scaffold(
        backgroundColor: AppColors.dark,
        // appBar: AppBar(
        //   backgroundColor: AppColors.dark,
        //   elevation: 0,
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      ref.invalidate(highlightStateProvider);
                      context.pop();
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Choose a book to save this highlight to',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  flex: 3,
                  child: ListView.separated(
                    itemBuilder: (_, i) {
                      if (i == (widget.savedSources.length ?? 0)) {
                        return const AddNewSourceItem();
                      }

                      return SourceItemWidget(
                        source: widget.savedSources[i],
                      );
                    },
                    separatorBuilder: (_, i) =>
                        const Divider(color: AppColors.lightGrey),
                    itemCount: (widget.savedSources.length ?? 0) + 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
