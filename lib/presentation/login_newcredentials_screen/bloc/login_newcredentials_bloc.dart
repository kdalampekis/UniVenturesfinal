import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/login_newcredentials_screen/models/login_newcredentials_model.dart';
part 'login_newcredentials_event.dart';
part 'login_newcredentials_state.dart';

/// A bloc that manages the state of a LoginNewcredentials according to the event that is dispatched to it.
class LoginNewcredentialsBloc
    extends Bloc<LoginNewcredentialsEvent, LoginNewcredentialsState> {
  LoginNewcredentialsBloc(LoginNewcredentialsState initialState)
      : super(initialState) {
    on<LoginNewcredentialsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginNewcredentialsInitialEvent event,
    Emitter<LoginNewcredentialsState> emit,
  ) async {}
}
