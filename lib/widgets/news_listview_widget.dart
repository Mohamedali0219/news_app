import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widgets/newstile_widget.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleMOdel> articles;

  const NewsTileListView({super.key, required this.articles});
  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTileWIdget(
            articleMOdel: articles[index],
          );
        },
      ),
    );
  }
}
