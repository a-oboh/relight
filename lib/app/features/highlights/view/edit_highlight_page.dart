import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class EditHighlight extends ConsumerStatefulWidget {
  const EditHighlight({required this.highlight, super.key});

  final Highlight highlight;

  @override
  ConsumerState<EditHighlight> createState() => _EditHighlightState();
}

class _EditHighlightState extends ConsumerState<EditHighlight> {
  final TextEditingController highlightController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      highlightController.text = widget.highlight.content;
    });
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
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
            child: TextFormField(
              controller: highlightController,
              maxLines: 4,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Enter highlight',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please input content';
                }
                return null;
              },
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
                    highlight: widget.highlight
                        .copyWith(content: highlightController.text.trim()),
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
