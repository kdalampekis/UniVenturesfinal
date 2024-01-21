import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/setup_your_account_organization_screen/models/setup_your_account_organization_model.dart';part 'setup_your_account_organization_event.dart';part 'setup_your_account_organization_state.dart';/// A bloc that manages the state of a SetupYourAccountOrganization according to the event that is dispatched to it.
class SetupYourAccountOrganizationBloc extends Bloc<SetupYourAccountOrganizationEvent, SetupYourAccountOrganizationState> {SetupYourAccountOrganizationBloc(SetupYourAccountOrganizationState initialState) : super(initialState) { on<SetupYourAccountOrganizationInitialEvent>(_onInitialize); }

_onInitialize(SetupYourAccountOrganizationInitialEvent event, Emitter<SetupYourAccountOrganizationState> emit, ) async  {  } 
 }
