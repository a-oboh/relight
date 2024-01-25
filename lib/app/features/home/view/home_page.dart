import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/home/notifiers/home_state_notifier.dart';
import 'package:relight/app/features/home/view/widgets/widgets.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     ref.read(homeStateProvider.notifier).loadHighlights();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeStateProvider);

    ref.listen(homeStateProvider, (previous, next) {
      next.deleteHighlightStatus.whenOrNull(
        initial: () {
          if (previous!.deleteHighlightStatus.isLoading) {
            context.pop();
          }
        },
        loading: () {
          //TODO(albert): investigate dialog not appearing
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const LoadingDialog(),
          );
        },
        error: (errorText, _) {
          if (previous!.deleteHighlightStatus.isLoading) {
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

    return SafeArea(
        child: Scaffold(
      body: homeState.status.map(initial: (_) {
        if (homeState.highlights.isEmpty) {
          return Center(
            child: Text('You have no highlights, why not add one?'.hardCoded),
          );
        }
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
              sliver: SliverList.separated(
                itemCount: homeState.highlights.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (_, index) {
                  final item = homeState.highlights[index];

                  return HighlightCardItem(
                    itemCount: index,
                    highlight: item,
                  );
                },
              ),
            ),
          ],
        );
      }, loading: (_) {
        return const Center(
          child: CircularProgressIndicator(
            color: AppColors.purpleMain,
          ),
        );
      }, error: (state) {
        return Center(
          child: Text(state.errorText ?? "We couldn't load your highlights 😔"),
        );
      }),
    ));
  }
}
