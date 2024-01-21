// ignore_for_file: must_be_immutable

part of 'book_now_link_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookNowLink widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookNowLinkEvent extends Equatable {}

/// Event that is dispatched when the BookNowLink widget is first created.
class BookNowLinkInitialEvent extends BookNowLinkEvent {
  @override
  List<Object?> get props => [];
}
