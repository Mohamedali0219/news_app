import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});
  final List<NewsModel> items = const [
    NewsModel(
      name: 'business',
      images: 'assets/business.avif',
    ),
    NewsModel(
      name: 'entertainment',
      images: 'assets/entertaiment.avif',
    ),
    NewsModel(
      name: 'health',
      images: 'assets/health.avif',
    ),
    NewsModel(
      name: 'science',
      images: 'assets/science.avif',
    ),
    NewsModel(
      name: 'sports',
      images: 'assets/sports.avif',
    ),
    NewsModel(
      name: 'technology',
      images: 'assets/technology.jpeg',
    ),
    NewsModel(
      name: 'general',
      images: 'assets/general.avif',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CategoryWidget(
                item: items[index],
              ),
            );
          }),
    );
  }
}
