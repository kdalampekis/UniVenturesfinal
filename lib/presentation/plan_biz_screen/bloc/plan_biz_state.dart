// ignore_for_file: must_be_immutable

part of 'plan_biz_bloc.dart';

class PlanBizState extends Equatable {
  final PlanBizModel? PlanBizModelObj;
  final bool isBooked;
  final bool isFavorited;

  PlanBizState({
    this.PlanBizModelObj,
    this.isBooked = false,
    this.isFavorited = false,
  });

  @override
  List<Object?> get props => [PlanBizModelObj, isBooked, isFavorited];

  PlanBizState copyWith({
    PlanBizModel? PlanBizModelObj,
    bool? isBooked,
    bool? isFavorited,
  }) {
    return PlanBizState(
      PlanBizModelObj: PlanBizModelObj ?? this.PlanBizModelObj,
      isBooked: isBooked ?? this.isBooked,
      isFavorited: isFavorited ?? this.isFavorited,
    );
  }
}
