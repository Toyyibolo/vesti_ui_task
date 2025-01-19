class Book {
  final String imageUrl;
  final String title;
  final double rating;
  final int pages;
  final String language;
  final String synopsis;
  final String genre;
  final List<Review> reviews;
  final String status;
  final bool borrowed;
  final String daysLeft;
  final String author;
  // New field for book status

  Book(
      {required this.imageUrl,
      required this.title,
      required this.rating,
      required this.pages,
      required this.language,
      required this.synopsis,
      required this.genre,
      required this.reviews,
      required this.status,
      required this.borrowed,
      required this.daysLeft,
      required this.author});
}

class Review {
  final String userName;
  final String comment;

  Review({
    required this.userName,
    required this.comment,
  });
}
