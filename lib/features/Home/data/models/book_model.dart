
class BookModel {
  final String title;
  final String? subtitle;
  final List<String> authors;
  final String? image;

  BookModel({
    required this.title,
    this.subtitle,
    required this.authors,
    this.image,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final volumeInfo = json['volumeInfo'] ?? {};

    return BookModel(
      title: volumeInfo['title'] ?? 'Unknown Title',
      subtitle: volumeInfo['subtitle'],
      authors: List<String>.from(volumeInfo['authors'] ?? []),
      image: volumeInfo['imageLinks']?['thumbnail'],
    );
  }
}
