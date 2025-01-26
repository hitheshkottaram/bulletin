import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:bullet_in/features/home/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:bullet_in/features/home/presentation/bloc/ui/home_ui_bloc.dart';
import 'package:bullet_in/features/home/presentation/bloc/ui/home_ui_event.dart';
import 'package:bullet_in/features/home/presentation/bloc/ui/home_ui_state.dart';
import 'package:bullet_in/features/home/presentation/widgets/article_list_item.dart';
import 'package:bullet_in/features/main/presentation/widgets/app_bar_floating_icon.dart';
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
  final homeUIBloc = sl<HomeUIBloc>();
  bool _isTopInvisible = true;
  bool _isScrollingUp = true;
  double _scrollOffset = 0.0;
  final double _scrollThreshold = 100.0;

  void _scrollListener() {
    if (_scrollController.offset <= _scrollThreshold) {
      _isTopInvisible = true;
      homeUIBloc.add(const TopAppBarEvent(isTopVisible: true));
    } else{
      if(_isTopInvisible){
        _isTopInvisible = false;
      homeUIBloc.add(const TopAppBarEvent(isTopVisible: false));
      }
    }

    final double currentOffset = _scrollController.position.pixels;

    if ((currentOffset - _scrollOffset).abs() > _scrollThreshold) {
      if (currentOffset > _scrollOffset) {
        if (_isScrollingUp) {
          _isScrollingUp = false;
          homeUIBloc.add(const ScrollUpEvent(isScrollUp: false));
        }
      } else {
        if (!_isScrollingUp) {
          _isScrollingUp = true;
          homeUIBloc.add(const ScrollUpEvent(isScrollUp: true));
        }
      }
      _scrollOffset = currentOffset;
    }
  }

  @override
  void initState() {
    super.initState();
    homeUIBloc
        .add(const HomeUIInitialEvent(isScrollUp: true, isTopVisible: true));
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider<RemoteArticleBloc>(
              create: (context) => sl()..add(const GetArticles())),
        ],
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
                        itemCount: state.article?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: ArticleListItemWidget(
                              key: ValueKey(index),
                              data: state.article![index],
                              isLastItem: (index == state.article!.length - 1),
                            ),
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
              BlocBuilder<HomeUIBloc, HomeUIState>(
                buildWhen: (previousState, currentState) =>
                    (currentState is ScrollUpState),
                builder: (context, state) {
                  if (state is ScrollUpState) {
                    return AnimatedAppBarFloatingButton(
                      icon: Icons.menu,
                      onPressed: () {},
                      isLeft: true,
                      isScrollingUp: state.isScrollUp,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              BlocBuilder<HomeUIBloc, HomeUIState>(
                buildWhen: (previousState, currentState) =>
                    (currentState is ScrollUpState),
                builder: (context, state) {
                  if (state is ScrollUpState) {
                    return AnimatedAppBarFloatingButton(
                      icon: Icons.search,
                      onPressed: () {},
                      isLeft: false,
                      isScrollingUp: state.isScrollUp,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              BlocBuilder<HomeUIBloc, HomeUIState>(
                buildWhen: (previousState, currentState) =>
                    (currentState is TopAppBarState),
                builder: (context, state) {
                  if (state is TopAppBarState) {
                    return AnimatedOpacity(
                      opacity: !state.isTopVisible ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).padding.top,
                        color: theme.colorScheme.surface,
                        alignment: Alignment.center,
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ));
  }
}
