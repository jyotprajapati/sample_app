import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/feature/home_page/cubit/cubit/repos_feed_cubit.dart';
import 'package:sample_app/feature/home_page/ui/widgets/repo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cubit = RepoFeedCubit();
  @override
  Widget build(BuildContext context) {
    cubit.getRepos();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: BlocBuilder<RepoFeedCubit, RepoFeedState>(
        bloc: cubit,
        builder: (context, state) {
          return state.map(
            initial: (_) => Center(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    cubit.getRepos();
                  },
                  child: const Text('Load Data'),
                ),
              ),
            ),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (value) => Center(
              child: Text(value.message),
            ),
            loaded: (state) {
              return ListView.builder(
                itemCount: state.repos.length,
                itemBuilder: (context, index) {
                  return RepoTile(repo: state.repos[index]);
                },
              );
            },
          );
        },
      ),
    );
  }
}
