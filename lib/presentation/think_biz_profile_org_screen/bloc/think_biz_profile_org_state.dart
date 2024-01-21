// ignore_for_file: must_be_immutable

part of 'think_biz_profile_org_bloc.dart';

/// Represents the state of ThinkBizProfileOrg in the application.
class ThinkBizProfileOrgState extends Equatable {
  ThinkBizProfileOrgState({
    this.appTitleController,
    this.passwordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.thinkBizProfileOrgModelObj,
  });

  TextEditingController? appTitleController;

  TextEditingController? passwordController;

  ThinkBizProfileOrgModel? thinkBizProfileOrgModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        appTitleController,
        passwordController,
        isShowPassword,
        isShowPassword1,
        thinkBizProfileOrgModelObj,
      ];
  ThinkBizProfileOrgState copyWith({
    TextEditingController? appTitleController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    ThinkBizProfileOrgModel? thinkBizProfileOrgModelObj,
  }) {
    return ThinkBizProfileOrgState(
      appTitleController: appTitleController ?? this.appTitleController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      thinkBizProfileOrgModelObj:
          thinkBizProfileOrgModelObj ?? this.thinkBizProfileOrgModelObj,
    );
  }
}
