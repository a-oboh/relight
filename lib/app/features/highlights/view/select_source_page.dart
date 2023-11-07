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
      state.createHighlightStatus.whenOrNull(
        loading: () {
          showDialog<void>(
            barrierDismissible: false,
            context: context,
            builder: (_) {
              return const LoadingDialog();
            },
          );
        },
        initial: () {
          if (previous?.isCreatingHighlight ?? false) {
            ref.read(homeStateProvider.notifier).loadHighlights();
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
        },
        error: (errorText) {
          if (previous?.isCreatingHighlight ?? false) {
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
                      if (i == (highlightNotif.loadedSources.length ?? 0)) {
                        return const AddNewSourceItem();
                      }

                      return SourceItemWidget(
                        source: highlightNotif.loadedSources[i],
                      );
                    },
                    separatorBuilder: (_, i) =>
                        const Divider(color: AppColors.lightGrey),
                    itemCount: highlightNotif.loadedSources.length + 1,
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
