import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';

class NewsTileWIdget extends StatelessWidget {
  const NewsTileWIdget({
    super.key,
    required this.articleMOdel,
  });
  final ArticleMOdel articleMOdel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: articleMOdel.image != null
              ? Image.network(
                  articleMOdel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.network(
                  "https://th.bing.com/th/id/OIG.yzY7CjeonAxVE0gAcKMn",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          articleMOdel.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(fontSize: 24),
        ),
        Text(
          articleMOdel.subTitle ?? " ",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
