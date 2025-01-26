import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:bullet_in/features/main/presentation/widgets/app_bar_flating_icon.dart';
import 'package:bullet_in/features/main/presentation/widgets/custom_app_bar.dart';
import 'package:bullet_in/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<RemoteArticleBloc>(
        create: (context) => sl()..add(const GetArticles()),
        child: Scaffold(
          body: Stack(
            children: [
              CustomScrollView(
                controller: _scrollController,
                slivers: [
                  CustomAppBar(
                    title: AppLocalizations.of(context)!.bulletInDaily,
                    subTitle: AppLocalizations.of(context)!.newsMadeSimple,
                    iconColor: theme.colorScheme.primary,
                  ),
                  BlocBuilder<RemoteArticleBloc, RemoteArticleState>(
                      builder: (_, state) {
                    if (state is RemoteArticleLoading) {
                      return const SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state is RemoteArticleDone) {
                      return SliverList.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("Item $index"),
                          );
                        },
                      );
                    }
                    return SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.failedToLoad,
                            style: theme.textTheme.displaySmall),
                      ),
                    );
                  }),
                ],
              ),
              AnimatedAppBarFloatingButton(
                icon: Icons.menu,
                onPressed: () {},
                scrollController: _scrollController,
                isLeft: true,
              ),
              AnimatedAppBarFloatingButton(
                icon: Icons.search,
                onPressed: () {},
                scrollController: _scrollController,
                isLeft: false,
              ),
            ],
          ),
        ));
  }
}
