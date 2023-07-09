import 'package:dio/dio.dart';
import 'package:sample_app/core/Api_secrets.dart';
import 'package:sample_app/feature/home_page/models/commit_model.dart';
import 'package:sample_app/feature/home_page/models/repo_model.dart';

class RepoService {
  final Dio _dio;
  RepoService(this._dio);

  Future<List<RepoFeedModel>> getUserRepos(
    String username,
  ) async {
    try {
      final response = await _dio.get(
        'https://api.github.com/users/$username/repos',
        queryParameters: {
          'page': 1,
          'per_page': 10,
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $github_PAT",
          },
        ),
      );

      if (response.statusCode == 200) {
        return response.data
            .map<RepoFeedModel>((json) => RepoFeedModel.fromJson(json))
            .toList();
      } else {
        throw Exception('Failed to load repos');
      }
    } catch (e) {
      print(e.toString());
      if (e is DioException) {
        if (e.response?.statusCode == 404) {
          throw Exception('User not found');
        }
        if (e.response?.statusCode == 403) {
          throw Exception('API rate limit exceeded');
        }
      }
      throw Exception('Failed to load repos');
    }
  }

  Future<Commit> getCommit(String repoName) async {
    try {
      final response = await _dio.get(
        'https://api.github.com/repos/freeCodeCamp/$repoName/commits',
        queryParameters: {
          'page': 1,
          'per_page': 1,
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $github_PAT",
          },
        ),
      );

      if (response.statusCode == 200) {
        return Commit.fromJson(response.data[0]);
      } else {
        throw Exception('Failed to load commit');
      }
    } catch (e) {
      print(e.toString());
      throw Exception('Failed to load commit');
    }
  }
}
