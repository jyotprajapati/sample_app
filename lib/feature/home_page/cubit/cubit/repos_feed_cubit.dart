import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/repo_model.dart';
import '../../services/repo_services.dart';

part 'repos_feed_state.dart';
part 'repos_feed_cubit.freezed.dart';

@injectable
class RepoFeedCubit extends Cubit<RepoFeedState> {
  RepoFeedCubit() : super(const RepoFeedState.initial());
  final _repoService = RepoService(Dio());

  Future<void> getRepos() async {
    emit(const RepoFeedState.loading());
    try {
      final repos = await _repoService.getUserRepos('freeCodeCamp');
      emit(RepoFeedState.loaded(repos));
      _addLastCommit();
    } catch (e) {
      emit(RepoFeedState.error('$e'));
      rethrow;
    }
  }

  _addLastCommit() async {
    final repos = state.maybeMap(
      loaded: (state) => state.repos,
      orElse: () => [],
    );
    final List<RepoFeedModel> updatedRepos = [];
    for (RepoFeedModel repo in repos) {
      if (repo.lastCommit == null) {
        final lastCommit = await _repoService.getCommit(repo.name);
        final updatedRepo = repo.copyWith(lastCommit: lastCommit);
        updatedRepos.add(updatedRepo);
      }
    }
    emit(RepoFeedState.loaded(updatedRepos));
  }
}
