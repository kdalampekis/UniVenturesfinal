import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/team_illustration_3_one_screen/models/team_illustration_3_one_model.dart';part 'team_illustration_3_one_event.dart';part 'team_illustration_3_one_state.dart';/// A bloc that manages the state of a TeamIllustration3One according to the event that is dispatched to it.
class TeamIllustration3OneBloc extends Bloc<TeamIllustration3OneEvent, TeamIllustration3OneState> {TeamIllustration3OneBloc(TeamIllustration3OneState initialState) : super(initialState) { on<TeamIllustration3OneInitialEvent>(_onInitialize); }

_onInitialize(TeamIllustration3OneInitialEvent event, Emitter<TeamIllustration3OneState> emit, ) async  {  } 
 }
