import 'package:bullet_in/core/resources/extensions.dart';
import 'package:bullet_in/features/home/domain/entity/news_article_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ArticleListItemWidget extends StatelessWidget {
  final NewsArticleEntity data;
  final bool isLastItem;
  const ArticleListItemWidget(
      {super.key, required this.data, required this.isLastItem});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: isLastItem ? 20.0 : 0.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 2.0,
            spreadRadius: 1.0,
            color:
                Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title.orEmpty(),
                      style: theme.textTheme.bodyLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      data.description.orEmpty(),
                      style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSecondaryContainer),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: CachedNetworkImage(
                  height: 100,
                  width: 150,
                  imageUrl: data.urlToImage ?? "",
                  cacheKey: data.urlToImage ?? "",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => Shimmer.fromColors(
          baseColor: theme.colorScheme.onSurface,
          highlightColor: theme.colorScheme.onSurface.withValues(alpha: 0.8),
          child: Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(4.0),
              boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0.5),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            color:
                Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
          )
        ],
            ),
          ),
        ),
                  // placeholder: (context, url) =>
                  //     const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
