class HomeEntities {
  final String bookId;
  final String? imageUri;
  final String title;
  final String? autorTitle;
  final String? price;
  final num? rating;
  final num? views;

  HomeEntities(
      {required this.bookId,
      required this.imageUri,
      required this.title,
      required this.autorTitle,
      required this.price,
      required this.rating,
      required this.views});
}
