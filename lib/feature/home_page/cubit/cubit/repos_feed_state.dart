part of 'repos_feed_cubit.dart';

@freezed
class RepoFeedState with _$RepoFeedState {
  const factory RepoFeedState.initial() = _Initial;
  const factory RepoFeedState.loading() = _Loading;
  const factory RepoFeedState.loaded(List<RepoFeedModel> repos) = _Loaded;
  const factory RepoFeedState.error(String message) = _Error;
}
