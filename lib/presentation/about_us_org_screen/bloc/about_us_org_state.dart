// ignore_for_file: must_be_immutable

part of 'about_us_org_bloc.dart';

/// Represents the state of AboutUsOrg in the application.
class AboutUsOrgState extends Equatable {
  AboutUsOrgState({this.aboutUsOrgModelObj});

  AboutUsOrgModel? aboutUsOrgModelObj;

  @override
  List<Object?> get props => [
        aboutUsOrgModelObj,
      ];
  AboutUsOrgState copyWith({AboutUsOrgModel? aboutUsOrgModelObj}) {
    return AboutUsOrgState(
      aboutUsOrgModelObj: aboutUsOrgModelObj ?? this.aboutUsOrgModelObj,
    );
  }
}
