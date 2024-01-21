import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_account_organization_three_screen/models/setup_your_account_organization_three_model.dart';part 'setup_your_account_organization_three_event.dart';part 'setup_your_account_organization_three_state.dart';/// A bloc that manages the state of a SetupYourAccountOrganizationThree according to the event that is dispatched to it.
class SetupYourAccountOrganizationThreeBloc extends Bloc<SetupYourAccountOrganizationThreeEvent, SetupYourAccountOrganizationThreeState> {SetupYourAccountOrganizationThreeBloc(SetupYourAccountOrganizationThreeState initialState) : super(initialState) { on<SetupYourAccountOrganizationThreeInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccountOrganizationThreeInitialEvent event, Emitter<SetupYourAccountOrganizationThreeState> emit, ) async  { emit(state.copyWith(answerOneController: TextEditingController())); } 
 }
