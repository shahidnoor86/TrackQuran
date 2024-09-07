part of 'books_bloc.dart';

@immutable
class BooksState {
  final List<String>? books;

  const BooksState({this.books});
}

final class BooksInitial extends BooksState {
  BooksInitial() : super(books: ["The Holy Quran", "Quran Urdu"]);
}
