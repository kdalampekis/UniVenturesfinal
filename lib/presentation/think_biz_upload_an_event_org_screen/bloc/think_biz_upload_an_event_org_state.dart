// ignore_for_file: must_be_immutable

part of 'think_biz_upload_an_event_org_bloc.dart';

/// Represents the state of ThinkBizUploadAnEventOrg in the application.
class ThinkBizUploadAnEventOrgState extends Equatable {
  ThinkBizUploadAnEventOrgState({
    this.languageController,
    this.jamwriteController,
    this.thinkBizUploadAnEventOrgModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? jamwriteController;

  ThinkBizUploadAnEventOrgModel? thinkBizUploadAnEventOrgModelObj;

  @override
  List<Object?> get props => [
        languageController,
        jamwriteController,
        thinkBizUploadAnEventOrgModelObj,
      ];
  ThinkBizUploadAnEventOrgState copyWith({
    TextEditingController? languageController,
    TextEditingController? jamwriteController,
    ThinkBizUploadAnEventOrgModel? thinkBizUploadAnEventOrgModelObj,
  }) {
    return ThinkBizUploadAnEventOrgState(
      languageController: languageController ?? this.languageController,
      jamwriteController: jamwriteController ?? this.jamwriteController,
      thinkBizUploadAnEventOrgModelObj: thinkBizUploadAnEventOrgModelObj ??
          this.thinkBizUploadAnEventOrgModelObj,
    );
  }
}
