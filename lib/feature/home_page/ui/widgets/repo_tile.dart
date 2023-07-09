import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample_app/feature/home_page/models/repo_model.dart';

import '../../../../core/utils.dart';

// a widget to display RepoFeedModel
class RepoTile extends StatelessWidget {
  const RepoTile({super.key, required this.repo});
  final RepoFeedModel repo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Colors.grey,
        title: Text(repo.fullName),
        subtitle: repo.lastCommit != null
            ? Text(
                "Last updated at: ${formatDate(repo.lastCommit!.date)} by ${repo.lastCommit!.authorName} ")
            : Text("Last updated at: Loading... "),
      ),
    );
  }
}
