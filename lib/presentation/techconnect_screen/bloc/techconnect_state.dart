// ignore_for_file: must_be_immutable

part of 'techconnect_bloc.dart';

/// Represents the state of Techconnect in the application.
class TechconnectState extends Equatable {
  final bool isBooked;
  final bool isFavorited;
  TechconnectState({
    this.techconnectModelObj,
    this.isBooked = false,
    this.isFavorited = false,
  });


  TechconnectModel? techconnectModelObj;

  @override
  List<Object?> get props => [
        techconnectModelObj,
    isBooked, isFavorited,
      ];
  TechconnectState copyWith({
    TechconnectModel? techconnectModelObj,
    bool? isBooked,
    bool? isFavorited,
  }) {
    return TechconnectState(
      techconnectModelObj: techconnectModelObj ?? this.techconnectModelObj,
      isBooked: isBooked ?? this.isBooked,
      isFavorited: isFavorited ?? this.isFavorited,
    );
  }
}
