// ignore_for_file: must_be_immutable

part of 'tedxaueb_pangea_main_event_bloc.dart';

/// Represents the state of TedxauebPangeaMainEvent in the application.
class TedxauebPangeaMainState extends Equatable {
  final TedxauebPangeaMainEventModel? TedxauebPangeaMainEventModelObj;
  final bool isBooked;
  final bool isFavorited;

  TedxauebPangeaMainState({
    this.TedxauebPangeaMainEventModelObj,
    this.isBooked = false,
    this.isFavorited = false,
  });

  @override
  List<Object?> get props => [TedxauebPangeaMainEventModelObj, isBooked, isFavorited];

  TedxauebPangeaMainState copyWith({
    TedxauebPangeaMainEventModel? TedxauebPangeaMainModelObj,
    bool? isBooked,
    bool? isFavorited,
  }) {
    return TedxauebPangeaMainState(
      TedxauebPangeaMainEventModelObj: TedxauebPangeaMainModelObj ?? this.TedxauebPangeaMainEventModelObj,
      isBooked: isBooked ?? this.isBooked,
      isFavorited: isFavorited ?? this.isFavorited,
    );
  }
}