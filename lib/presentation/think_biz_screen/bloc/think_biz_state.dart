part of 'think_biz_bloc.dart';

class ThinkBizState extends Equatable {
  final ThinkBizModel? thinkBizModelObj;
  final bool isBooked;
  final bool isFavorited;

  ThinkBizState({
    this.thinkBizModelObj,
    this.isBooked = false,
    this.isFavorited = false,
  });

  @override
  List<Object?> get props => [thinkBizModelObj, isBooked, isFavorited];

  ThinkBizState copyWith({
    ThinkBizModel? thinkBizModelObj,
    bool? isBooked,
    bool? isFavorited,
  }) {
    return ThinkBizState(
      thinkBizModelObj: thinkBizModelObj ?? this.thinkBizModelObj,
      isBooked: isBooked ?? this.isBooked,
      isFavorited: isFavorited ?? this.isFavorited,
    );
  }
}
