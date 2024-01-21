// ignore_for_file: must_be_immutable

part of 'login_newcredentials_bloc.dart';

/// Represents the state of LoginNewcredentials in the application.
class LoginNewcredentialsState extends Equatable {
  LoginNewcredentialsState({this.loginNewcredentialsModelObj});

  LoginNewcredentialsModel? loginNewcredentialsModelObj;

  @override
  List<Object?> get props => [
        loginNewcredentialsModelObj,
      ];
  LoginNewcredentialsState copyWith(
      {LoginNewcredentialsModel? loginNewcredentialsModelObj}) {
    return LoginNewcredentialsState(
      loginNewcredentialsModelObj:
          loginNewcredentialsModelObj ?? this.loginNewcredentialsModelObj,
    );
  }
}
