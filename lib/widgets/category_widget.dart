import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.item});
  final NewsModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: item.name,
              );
            },
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          alignment: Alignment.center,
          height: 120,
          width: 220,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(item.images),
              fit: BoxFit.fill,
            ),
          ),
          child: Text(
            item.name,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
