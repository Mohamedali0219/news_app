class ArticleMOdel {
  final String? image;
  final String title;
  final String? subTitle;

  const ArticleMOdel({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  // Named Constructor
  factory ArticleMOdel.fromJson(Map<String, dynamic> json) {
    return ArticleMOdel(
      image: json["urlToImage"],
      title: json["title"],
      subTitle: json["description"],
    );
  }
}
