// ignore_for_file: must_be_immutable

part of 'think_biz_org_bloc.dart';

/// Represents the state of ThinkBizOrg in the application.
class ThinkBizOrgState extends Equatable {
  ThinkBizOrgState({
    this.descriptionController,
    this.thinkBizOrgModelObj,
  });

  TextEditingController? descriptionController;

  ThinkBizOrgModel? thinkBizOrgModelObj;

  @override
  List<Object?> get props => [
        descriptionController,
        thinkBizOrgModelObj,
      ];
  ThinkBizOrgState copyWith({
    TextEditingController? descriptionController,
    ThinkBizOrgModel? thinkBizOrgModelObj,
  }) {
    return ThinkBizOrgState(
      descriptionController:
          descriptionController ?? this.descriptionController,
      thinkBizOrgModelObj: thinkBizOrgModelObj ?? this.thinkBizOrgModelObj,
    );
  }
}
