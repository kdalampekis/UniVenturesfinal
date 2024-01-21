import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/volunteer_screen/models/volunteer_model.dart';part 'volunteer_event.dart';part 'volunteer_state.dart';/// A bloc that manages the state of a Volunteer according to the event that is dispatched to it.
class VolunteerBloc extends Bloc<VolunteerEvent, VolunteerState> {VolunteerBloc(VolunteerState initialState) : super(initialState) { on<VolunteerInitialEvent>(_onInitialize); }

_onInitialize(VolunteerInitialEvent event, Emitter<VolunteerState> emit, ) async  {  } 
 }
