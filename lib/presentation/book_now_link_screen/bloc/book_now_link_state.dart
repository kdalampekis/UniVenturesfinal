// ignore_for_file: must_be_immutable

part of 'book_now_link_bloc.dart';

/// Represents the state of BookNowLink in the application.
class BookNowLinkState extends Equatable {
  BookNowLinkState({this.bookNowLinkModelObj});

  BookNowLinkModel? bookNowLinkModelObj;

  @override
  List<Object?> get props => [
        bookNowLinkModelObj,
      ];
  BookNowLinkState copyWith({BookNowLinkModel? bookNowLinkModelObj}) {
    return BookNowLinkState(
      bookNowLinkModelObj: bookNowLinkModelObj ?? this.bookNowLinkModelObj,
    );
  }
}
