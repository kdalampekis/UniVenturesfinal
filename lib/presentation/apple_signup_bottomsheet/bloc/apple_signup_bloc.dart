import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:kwstas_s_application2/presentation/apple_signup_bottomsheet/models/apple_signup_model.dart';
part 'apple_signup_event.dart';
part 'apple_signup_state.dart';

/// A bloc that manages the state of a AppleSignup according to the event that is dispatched to it.
class AppleSignupBloc extends Bloc<AppleSignupEvent, AppleSignupState> {
  AppleSignupBloc(AppleSignupState initialState) : super(initialState) {
    on<AppleSignupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppleSignupInitialEvent event,
    Emitter<AppleSignupState> emit,
  ) async {}
}
