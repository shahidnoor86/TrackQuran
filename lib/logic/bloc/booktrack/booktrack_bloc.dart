import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'booktrack_event.dart';
part 'booktrack_state.dart';

class BooktrackBloc extends Bloc<BooktrackEvent, BooktrackState> {
  BooktrackBloc() : super(BooktrackInitial()) {
    on<BooktrackEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
