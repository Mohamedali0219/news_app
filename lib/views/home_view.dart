import 'package:flutter/material.dart';
import 'package:news_app/widgets/categorylist_widget.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(
                category: 'general',
              )
            ],
          ),
        ));
  }
}
