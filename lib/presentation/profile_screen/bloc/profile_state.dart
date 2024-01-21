// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final String name;
  final String lastName;
  final String email;
  final String password;
  final String? imagePath; // Add this line
  final bool isShowPassword;
  final bool isShowPassword1;
  final bool isShowPassword2;
  final ProfileModel? profileModelObj;

  ProfileState({
    this.name = '',
    this.lastName = '',
    this.email = '',
    this.password = '',
    this.imagePath = '',
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isShowPassword2 = true,
    this.profileModelObj,
  });

  @override
  List<Object?> get props => [
        name,
        lastName,
        email,
        password,
        imagePath,
        isShowPassword,
        isShowPassword1,
        isShowPassword2,
        profileModelObj,
      ];

  ProfileState copyWith({
    String? name,
    String? lastName,
    String? email,
    String? password,
    String? imagePath,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isShowPassword2,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password?? this.password,
      imagePath: imagePath?? this.imagePath,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isShowPassword2: isShowPassword2 ?? this.isShowPassword2,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}

