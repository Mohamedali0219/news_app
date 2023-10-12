import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_listview_widget.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  var futur ;
  @override
  void initState() {
    super.initState();
    futur = NewsServices(dio: Dio()).topGetHeadLine(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleMOdel>>(
      future: futur,
      builder: (context, snapshout) {
        if (snapshout.hasData) {
          return NewsTileListView(
            articles: snapshout.data!,
          );
        } else if (snapshout.hasError) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              // ui Error APi
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 255, 134, 174)),
                alignment: Alignment.center,
                height: 50,
                width: 200,
                child: const Text(
                  "oops: there was an Error, try later",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
                child: Padding(
              padding: EdgeInsets.only(top: 250.0),
              child: CircularProgressIndicator(),
            )),
          );
        }
      },
    );

  }
}
