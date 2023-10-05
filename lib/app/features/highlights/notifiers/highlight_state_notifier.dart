import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

final highlightStateProvider =
    StateNotifierProvider.autoDispose<HighlightStateNotifier, HighlightState>(
  (ref) {
    return HighlightStateNotifier(
      highlightsRepo: ref.read(highlightRepoProvider),
      highlightSourcesRepo: ref.read(highlightSourcesRepo),
      bookSourceRepository: ref.read(bookSourceRepo),
      user: ref.read(userProvider).value,
      ref: ref,
    );
  },
);

class HighlightStateNotifier extends StateNotifier<HighlightState> {
  HighlightStateNotifier({
    required HighlightsRepository highlightsRepo,
    required HighlightSourcesRepository highlightSourcesRepo,
    required BookSourceRepository bookSourceRepository,
    required this.ref,
    User? user,
  })  : _highlightsRepo = highlightsRepo,
        _highlightSourcesRepo = highlightSourcesRepo,
        _bookSourceRepo = bookSourceRepository,
        _user = user,
        super(const HighlightState());

  final HighlightsRepository _highlightsRepo;
  final HighlightSourcesRepository _highlightSourcesRepo;
  final BookSourceRepository _bookSourceRepo;
  final User? _user;
  final logger = Logger('highlight_notifier');
  final Ref ref;

  Future<void> createHighlight({
    required String content,
    required String sourceId,
  }) async {
    try {
      state = state.copyWith(createHighlightStatus: const BaseStatus.loading());

      await _highlightsRepo.createHighlight(
        content: content.trim(),
        date: DateTime.now(),
        sourceId: sourceId,
      );

      state = state.copyWith(createHighlightStatus: const BaseStatus.initial());
    } catch (e) {
      state = state.copyWith(
        createHighlightStatus: const BaseStatus.error(
          errorText: 'An error occured while creating this highlight',
        ),
      );
    }
  }

  Future<void> createNewSource({
    required Book book,
  }) async {
    try {
      state = state.copyWith(status: const BaseStatus.loading());

      if (_user != null) {
        await _highlightSourcesRepo.createSource(
          author: book.volumeInfo.authors.first,
          name: book.volumeInfo.title,
          owner: _user!.email!,
          createdAt: DateTime.now(),
        );

        state = state.copyWith(
          status: const BaseStatus.initial(),
          selectedBook: book,
        );
      }

      state = state.copyWith(status: const BaseStatus.initial());
    } catch (e) {
      state = state.copyWith(
        status: const BaseStatus.error(
          errorText: 'An error occured while creating this highlight source',
        ),
      );
    }
  }

  Future<void> findBook(String name) async {
    try {
      state = state.copyWith(status: const BaseStatus.loading());

      final books = await _bookSourceRepo.findBook(name: name);

      logger.info(books?.items);

      state = state.copyWith(
        status: const BaseStatus.initial(),
        bookResponse: books?.items ?? [],
      );
    } catch (e) {
      state = state.copyWith(status: const BaseStatus.initial());
    }
  }

  Future<void> loadBookSources() async {
    try {
      state = state.copyWith(loadSourcesStatus: const BaseStatus.loading());

      final db = ref.read(dbProvider);

      final userRef =
          db.collection(CollectionTags.users.name).doc(_user?.email);

      final savedSources = await db
          .collection(CollectionTags.highlightSources.name)
          .where('owner', isEqualTo: _user?.email)
          .get();

      final sources = <HighlightSource>[];

      for (final doc in savedSources.docs) {
        sources.add(
          HighlightSource.fromJson(doc.data()).copyWith(id: doc.id),
        );
      }

      state = state.copyWith(
        loadSourcesStatus: const BaseStatus.initial(),
        loadedSources: sources,
      );
    } catch (e) {
      log('${e.toString()}');

      state = state.copyWith(
        status: const BaseStatus.error(
          errorText: 'Could not load saved highlight sources',
        ),
      );
    }

    //find books for user in firebase.
    //load books for user
    //return list of books
  }

  HighlightState changeState(HighlightState newState) {
    return state = newState;
  }

  void onHighlightValueChanged(String value) {
    state = state.copyWith(highlightContent: value);
  }
}
