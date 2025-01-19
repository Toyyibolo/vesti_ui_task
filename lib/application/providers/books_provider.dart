import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vesti_flutter_ui_task/data/models/books.dart';
import 'package:vesti_flutter_ui_task/data/repositories/books_repositories.dart';

// Existing providers
final bookRepositoryProvider = Provider((ref) => BookRepository());
final booksProvider = StateProvider<List<Book>>((ref) {
  final bookRepository = ref.read(bookRepositoryProvider);
  return bookRepository.getBooks();
});

// New filtered books provider
final filteredBooksProvider = StateProvider<List<Book>>((ref) {
  return ref.watch(booksProvider); // Initially, all books
});

final filteredBorrowedBooksProvider = StateProvider<List<Book>>((ref) {
  return ref.watch(filteredBooksProvider); // Initially, all books
});

final filteredNewArrivalBooksProvider = StateProvider<List<Book>>((ref) {
  return ref.watch(filteredBooksProvider); // Initially, all books
});

final allBorrowedBooksProvider = StateProvider<List<Book>>((ref) {
  return ref.watch(booksProvider); // Initially, all books
});

final allNewArrivalBooksProvider = StateProvider<List<Book>>((ref) {
  return ref.watch(booksProvider); // Initially, all books
});

// Function to filter books by genre
void filterBooksByGenre(WidgetRef ref, String genre) {
  final allBooks = ref.read(booksProvider);
  final filteredBooks = allBooks.where((book) => book.genre == genre).toList();
  ref.read(filteredBooksProvider.notifier).state = filteredBooks;
  final filteredBorrowedBooks =
      filteredBooks.where((book) => book.borrowed == true).toList();
  ref.read(filteredBorrowedBooksProvider.notifier).state =
      filteredBorrowedBooks;
  final filteredNewArrivalBooks =
      filteredBooks.where((book) => book.status == 'New Arrival').toList();
  ref.read(filteredNewArrivalBooksProvider.notifier).state =
      filteredNewArrivalBooks;
}

void filterBooksAllTab(WidgetRef ref) {
  final allBooks = ref.read(booksProvider);

  final allBorrowedBooks =
      allBooks.where((book) => book.borrowed == true).toList();
  ref.read(filteredBorrowedBooksProvider.notifier).state = allBorrowedBooks;
  final allNewArrivalBooks =
      allBooks.where((book) => book.status == 'New Arrival').toList();
  ref.read(filteredNewArrivalBooksProvider.notifier).state = allNewArrivalBooks;
}
