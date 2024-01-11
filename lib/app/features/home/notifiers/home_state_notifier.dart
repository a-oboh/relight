import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/features.dart';

final homeStateProvider =
    StateNotifierProvider<HomeStateNotifier, HomeState>((ref) {
  return HomeStateNotifier(
    highlightRepository: ref.read(highlightRepoProvider),
    highlightSourcesRepository: ref.read(highlightSourcesRepo),
    user: ref.read(userProvider).valueOrNull,
  );
});

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier({
    required HighlightsRepository highlightRepository,
    required HighlightSourcesRepository highlightSourcesRepository,
    required User? user,
  })  : _highlightsRepository = highlightRepository,
        _highlightSourcesRepository = highlightSourcesRepository,
        _user = user,
        super(const HomeState());

  final HighlightsRepository _highlightsRepository;
  final HighlightSourcesRepository _highlightSourcesRepository;
  final User? _user;

  Future<void> loadHighlights() async {
    try {
      state = state.copyWith(status: const BaseStatus.loading());
      final highlights =
          await _highlightsRepository.getHighlights(user: _user!);
      state = state.copyWith(
        status: const BaseStatus.initial(),
        highlights: highlights,
      );
    } catch (e) {
      _setError("Sorry, we can't load your highlights right now 🤒");
    }
  }

  Future<HighlightSource> getSourceFromId(String sourceId) async {
    return _highlightSourcesRepository.getSourceFromId(sourceId);
  }

  void deleteHighlight(String id) {
    try {
      state = state.copyWith(deleteHighlightStatus: const BaseStatus.loading());
      _highlightsRepository.deleteHighlight(id);
      state = state.copyWith(deleteHighlightStatus: const BaseStatus.initial());
      loadHighlights();
    } catch (e) {
      state = state.copyWith(
        deleteHighlightStatus: const BaseStatus.error(errorText: ''),
      );
    }
  }

  Future<HomeState> editHighlight({
    required String id,
    required Highlight highlight,
  }) async {
    try {
      state = state.copyWith(status: const BaseStatus.loading());
      await _highlightsRepository.editHighlight(id, highlight);
      // state = state.copyWith(status: const BaseStatus.initial());
      await loadHighlights();
      return state;
    } catch (e) {
      _setError('Could not edit highlight');
      return state;
    }
  }

  void getFcmToken() {
    final token = FirebaseMessaging.instance.getToken();
  }

  void _setError(String error) {
    state = state.copyWith(status: BaseStatus.error(errorText: error));
  }
}
