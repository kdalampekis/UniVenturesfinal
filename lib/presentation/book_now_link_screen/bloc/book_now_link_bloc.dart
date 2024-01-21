import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/book_now_link_screen/models/book_now_link_model.dart';
part 'book_now_link_event.dart';
part 'book_now_link_state.dart';

/// A bloc that manages the state of a BookNowLink according to the event that is dispatched to it.
class BookNowLinkBloc extends Bloc<BookNowLinkEvent, BookNowLinkState> {
  BookNowLinkBloc(BookNowLinkState initialState) : super(initialState) {
    on<BookNowLinkInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookNowLinkInitialEvent event,
    Emitter<BookNowLinkState> emit,
  ) async {}
}
