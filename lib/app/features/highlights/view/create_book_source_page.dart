import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

class CreateBookSourcePage extends ConsumerStatefulWidget {
  const CreateBookSourcePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateBookSourcePageState();
}

class _CreateBookSourcePageState extends ConsumerState<CreateBookSourcePage> {
  @override
  Widget build(BuildContext context) {
    final highlightState = ref.watch(highlightStateProvider);
    final titleController = TextEditingController();
    final authorController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverSafeArea(
                sliver: SliverAppBar(
                  elevation: 0,
                  expandedHeight: 150,
                  collapsedHeight: 100,
                  title: const Text('Choose a book to add highlight'),
                  pinned: true,
                  floating: true,
                  snap: true,
                  stretch: true,
                  actions: const [],
                  flexibleSpace: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: titleController,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                hintText: 'Book title',
                              ),
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Title cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(width: 6),
                          AppBasicButton(
                            title: 'Go',
                            onTap: () {
                              ref
                                  .read(highlightStateProvider.notifier)
                                  .findBook(titleController.text);
                            },
                            padding: const EdgeInsets.symmetric(vertical: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
            ],
            body: ListView.builder(
              itemCount: highlightState.bookResponse.length,
              itemBuilder: (context, index) {
                final book = highlightState.bookResponse[index];

                return ListTile(
                  trailing: Container(
                    width: 12,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: NetworkImage('')),
                    ),
                  ),
                  title: Text(
                    book.volumeInfo.title,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    book.volumeInfo.authors.first,
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    ref
                        .read(highlightStateProvider.notifier)
                        .createNewSource(
                          book: book,
                        )
                        .then(
                          (value) => context.pop<List<HighlightSource>>(
                            ref.read(highlightStateProvider).loadedSources,
                          ),
                        );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
