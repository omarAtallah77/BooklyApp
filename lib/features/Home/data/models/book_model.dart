class BookModel {
  final String title;
  final String subtitle;
  final List<String> authors;
  final String image;

  BookModel({
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.image,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      authors: List<String>.from(json['authors'] ?? []),
      image: json['imageLinks']?['thumbnail'] as String,
    );
  }
}