import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';
import 'package:relight/app/features/highlights/models/url_metadata_model.dart';

class NewUrlHighlightPreviewPage extends ConsumerWidget {
  const NewUrlHighlightPreviewPage({required this.urlMetadata, super.key});

  static const routePath = '/newUrlHighlightPreview';

  final UrlMetadataModel urlMetadata;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(highlightStateProvider);

    ref.listen(highlightStateProvider, (previous, state) {
      state.createHighlightStatus.whenOrNull(
        initial: () {
          if (previous?.isCreatingHighlight ?? false) {
            ref.read(homeStateProvider.notifier).loadHighlights();

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
                        context.pushReplacementNamed(RelightRouter.homeRoute);
                      },
                    ),
                  ],
                );
              },
            );
          }
        },
        error: (errorText, _) {
          showDialog<void>(
            context: context,
            builder: (_) {
              return SimpleDialog(
                backgroundColor: AppColors.darkGrey2,
                children: [
                  Text(errorText ?? ''),
                  const SizedBox(height: 12),
                  AppBasicButton(
                    title: 'Retry',
                    onTap: () {
                      //TODO(al): Implement retry logic

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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: state.createHighlightStatus.map(
          initial: (status) => Column(
            children: [
              Row(
                children: [
                  BackButton(onPressed: () => context.pop()),
                  const Spacer(),
                  AppBasicButton(
                    title: 'Finish',
                    onTap: () {
                      // create a new highlight url
                      ref
                          .read(highlightStateProvider.notifier)
                          .createUrlHighlight(
                            sourceId: '',
                            urlMetadata: urlMetadata,
                          );
                    },
                  ),
                ],
              ),
              const Gap(30),
              Text(
                urlMetadata.title,
                style: AppTextStyles.largeSemiBold(fontSize: 22),
              ),
              const Gap(20),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(urlMetadata.images[0]),
                  ),
                ),
              ),
              const Gap(20),
              Text(urlMetadata.description),
            ],
          ),
          loading: (_) => const Center(
            child: CircularProgressIndicator(
              color: AppColors.purpleMain,
            ),
          ),
          error: (state) => Center(
            child: Column(
              children: [
                Text(
                  state.errorText ?? 'An error occured'.hardCoded,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
                AppBasicButton(
                  title: 'Retry',
                  onTap: () {
                    ref
                        .read(highlightStateProvider.notifier)
                        .createUrlHighlight(
                          sourceId: '',
                          urlMetadata: urlMetadata,
                        );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
