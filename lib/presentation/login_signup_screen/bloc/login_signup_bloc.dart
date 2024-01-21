import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/login_signup_screen/models/login_signup_model.dart';import 'package:kwstas_s_application2/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';import 'package:kwstas_s_application2/data/models/loginDeviceAuth/post_login_device_auth_req.dart';import 'dart:async';import 'package:kwstas_s_application2/data/repository/repository.dart';part 'login_signup_event.dart';part 'login_signup_state.dart';/// A bloc that manages the state of a LoginSignup according to the event that is dispatched to it.
class LoginSignupBloc extends Bloc<LoginSignupEvent, LoginSignupState> {LoginSignupBloc(LoginSignupState initialState) : super(initialState) { on<LoginSignupInitialEvent>(_onInitialize); }



/// Calls the https://nodedemo.dhiwise.co/device/auth/login API and triggers a [CreateLoginEvent] event on the [LoginSignupBloc] bloc.
///
/// The [BuildContext] parameter represents current [BuildContext]
_onInitialize(LoginSignupInitialEvent event, Emitter<LoginSignupState> emit, ) async  { 
add(CreateLoginEvent(),);
 } 
/// Calls [https://nodedemo.dhiwise.co/device/auth/login] with the provided event and emits the state.
///
/// The [CreateLoginEvent] parameter is used for handling event data
/// The [emit] parameter is used for emitting the state
///
/// Throws an error if an error occurs during the API call process.
}