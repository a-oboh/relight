import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/highlights/notifiers/highlight_state_notifier.dart';
import 'package:relight/app/features/highlights/view/new_url_highlight_preview.dart';

class NewArticleHighlight extends ConsumerWidget {
  NewArticleHighlight({super.key});

  static const routePath = '/highlight/new_article_highlight';
  final formKey = GlobalKey<FormState>(debugLabel: 'new_article_url');
  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(highlightStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Save link'.hardCoded),
      ),
      body: state.status.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: urlController,
                      validator: (value) {
                        final httpMatcher = RegExp(r'https?://\S+');

                        if (value == null || value.isEmpty) {
                          return 'Please enter a url'.hardCoded;
                        } else if (!httpMatcher.hasMatch(value)) {
                          return 'Please check your url'.hardCoded;
                        }
                        return null;
                      },
                      buildCounter: (
                        _, {
                        currentLength = 0,
                        isFocused = false,
                        maxLength = 0,
                      }) =>
                          const SizedBox.shrink(),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.purpleMain),
                        ),
                        hintText: 'https://...'.hardCoded,
                        hintStyle: const TextStyle(fontSize: 14),
                      ),
                    ),
                    const Gap(14),
                    AppBasicButton(
                      title: 'Next'.hardCoded,
                      onTap: () async {
                        if (formKey.currentState?.validate() == true) {
                          final data = await ref
                              .read(highlightStateProvider.notifier)
                              .getUrlMetadata(urlController.text);

                          if (data != null) {
                            await context.push(
                              NewUrlHighlightPreviewPage.routePath,
                              extra: data,
                            );
                          }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
