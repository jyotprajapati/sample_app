import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/feature/home_page/models/commit_model.dart';

part 'repo_model.freezed.dart';
part 'repo_model.g.dart';

@freezed
class RepoFeedModel with _$RepoFeedModel {
  const factory RepoFeedModel({
    required int id,
    required String name,
    @JsonKey(name: "full_name") required String fullName,
    @JsonKey(ignore: true) Commit? lastCommit,
  }) = _RepoFeedModel;

  factory RepoFeedModel.fromJson(Map<String, dynamic> json) =>
      _$RepoFeedModelFromJson(json);
}
