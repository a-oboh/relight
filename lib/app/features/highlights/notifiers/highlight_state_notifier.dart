import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';
import 'package:relight/app/features/highlights/models/url_metadata_model.dart';
import 'package:relight/app/features/highlights/repository/url_metadata_repository.dart';

final highlightStateProvider =
    StateNotifierProvider.autoDispose<HighlightStateNotifier, HighlightState>(
  (ref) {
    return HighlightStateNotifier(
      highlightsRepo: ref.read(highlightRepoProvider),
      highlightSourcesRepo: ref.read(highlightSourcesRepo),
      bookSourceRepository: ref.read(bookSourceRepo),
      user: ref.read(userProvider).value,
      urlMetadataRepository: ref.read(urlMetadataRepository),
      ref: ref,
    );
  },
);

class HighlightStateNotifier extends StateNotifier<HighlightState> {
  HighlightStateNotifier({
    required HighlightsRepository highlightsRepo,
    required HighlightSourcesRepository highlightSourcesRepo,
    required BookSourceRepository bookSourceRepository,
    required UrlMetadataRepository urlMetadataRepository,
    required this.ref,
    User? user,
  })  : _highlightsRepo = highlightsRepo,
        _highlightSourcesRepo = highlightSourcesRepo,
        _bookSourceRepo = bookSourceRepository,
        _urlMetadataRepository = urlMetadataRepository,
        _user = user,
        super(const HighlightState());

  final HighlightsRepository _highlightsRepo;
  final HighlightSourcesRepository _highlightSourcesRepo;
  final BookSourceRepository _bookSourceRepo;
  final UrlMetadataRepository _urlMetadataRepository;
  final User? _user;
  final logger = Logger('highlight_notifier');
  final Ref ref;

  Future<void> createHighlight({
    required String content,
    required String plainContent,
    required String sourceId,
  }) async {
    try {
      state = state.copyWith(createHighlightStatus: const BaseStatus.loading());

      await _highlightsRepo.createHighlight(
        highlight: Highlight(
          plainContent: plainContent,
          content: content.trim(),
          sourceId: sourceId,
          createdAt: DateTime.now(),
          owner: _user!.email!,
        ),
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
          source: HighlightSource(
            author: book.volumeInfo.authors.first,
            name: book.volumeInfo.title,
            owner: _user!.email!,
            createdAt: DateTime.now(),
          ),
        );

        state = state.copyWith(
          status: const BaseStatus.initial(),
          selectedBook: book,
        );

        await loadBookSources();
      }
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
      state = state.copyWith(loadedSourcesStatus: const BaseStatus.loading());

      final db = ref.read(dbProvider);

      // TODO(albert): move to repository
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
        loadedSourcesStatus: const BaseStatus.initial(),
        loadedSources: sources,
      );
    } catch (e) {
      _setError('Could not load saved highlight sources');
    }
  }

  HighlightState changeState(HighlightState newState) {
    return state = newState;
  }

  void setHighlightValue(String value) {
    state = state.copyWith(highlightContent: value);
  }

  void _setError(String error) {
    state = state.copyWith(status: BaseStatus.error(errorText: error));
  }

  Future<UrlMetadataModel?> getUrlMetadata(String url) async {
    try {
      state = state.copyWith(status: LoadingBaseStatus());
      final metaData = await _urlMetadataRepository.extractMetaData(url);
      state = state.copyWith(status: InitialBaseStatus());

      return metaData;
    } catch (e) {
      _setError(
          'An error occured, please check the url and try again'.hardCoded);
      return null;
    }
  }

  Future<void> createUrlHighlight({
    required String sourceId,
    required UrlMetadataModel urlMetadata,
  }) async {
    try {
      state = state.copyWith(createHighlightStatus: const BaseStatus.loading());

      await _highlightsRepo.createHighlight(
        highlight: Highlight(
          urlMetadata: urlMetadata,
          plainContent: '',
          content: '',
          sourceId: sourceId,
          createdAt: DateTime.now(),
          owner: _user!.email!,
        ),
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
}
