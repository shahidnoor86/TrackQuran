import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  BooksBloc() : super(BooksInitial()) {
    on<GetBooks>((event, emit) {
      // emit(ProductState(products: response.products));
      emit(BooksState(books: state.books));
    });
  }
}
