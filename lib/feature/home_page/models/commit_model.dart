class Commit {
  String authorName;
  DateTime date;

  Commit({required this.authorName, required this.date});

  static Future<Commit> fromJson(data) {
    return Future.value(Commit(
      authorName: data['commit']['author']['name'],
      date: DateTime.parse(data['commit']['author']['date']),
    ));
  }
}
