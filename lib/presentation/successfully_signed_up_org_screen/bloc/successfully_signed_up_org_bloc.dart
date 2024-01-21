import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/successfully_signed_up_org_screen/models/successfully_signed_up_org_model.dart';part 'successfully_signed_up_org_event.dart';part 'successfully_signed_up_org_state.dart';/// A bloc that manages the state of a SuccessfullySignedUpOrg according to the event that is dispatched to it.
class SuccessfullySignedUpOrgBloc extends Bloc<SuccessfullySignedUpOrgEvent, SuccessfullySignedUpOrgState> {SuccessfullySignedUpOrgBloc(SuccessfullySignedUpOrgState initialState) : super(initialState) { on<SuccessfullySignedUpOrgInitialEvent>(_onInitialize); }

_onInitialize(SuccessfullySignedUpOrgInitialEvent event, Emitter<SuccessfullySignedUpOrgState> emit, ) async  {  } 
 }
