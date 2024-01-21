// ignore_for_file: must_be_immutable

part of 'party_at_ntua_bloc.dart';

/// Represents the state of PartyAtNtua in the application.
class PartyAtNtuaState extends Equatable {
  final PartyAtNtuaModel? PartyAtNtuaModelObj;
  final bool isBooked;
  final bool isFavorited;

  PartyAtNtuaState({
    this.PartyAtNtuaModelObj,
    this.isBooked = false,
    this.isFavorited = false,
  });

  @override
  List<Object?> get props => [PartyAtNtuaModelObj, isBooked, isFavorited];

  PartyAtNtuaState copyWith({
    PartyAtNtuaModel? PartyAtNtuaModelObj,
    bool? isBooked,
    bool? isFavorited,
  }) {
    return PartyAtNtuaState(
      PartyAtNtuaModelObj: PartyAtNtuaModelObj ?? this.PartyAtNtuaModelObj,
      isBooked: isBooked ?? this.isBooked,
      isFavorited: isFavorited ?? this.isFavorited,
    );
  }
}

