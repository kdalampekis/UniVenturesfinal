// ignore_for_file: must_be_immutable

part of 'sth_went_wrong_bloc.dart';

/// Represents the state of SthWentWrong in the application.
class SthWentWrongState extends Equatable {
  SthWentWrongState({this.sthWentWrongModelObj});

  SthWentWrongModel? sthWentWrongModelObj;

  @override
  List<Object?> get props => [
        sthWentWrongModelObj,
      ];
  SthWentWrongState copyWith({SthWentWrongModel? sthWentWrongModelObj}) {
    return SthWentWrongState(
      sthWentWrongModelObj: sthWentWrongModelObj ?? this.sthWentWrongModelObj,
    );
  }
}
