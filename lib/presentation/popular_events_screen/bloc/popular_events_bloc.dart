import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/popular_events_screen/models/popular_events_model.dart';part 'popular_events_event.dart';part 'popular_events_state.dart';/// A bloc that manages the state of a PopularEvents according to the event that is dispatched to it.
class PopularEventsBloc extends Bloc<PopularEventsEvent, PopularEventsState> {PopularEventsBloc(PopularEventsState initialState) : super(initialState) { on<PopularEventsInitialEvent>(_onInitialize); }

_onInitialize(PopularEventsInitialEvent event, Emitter<PopularEventsState> emit, ) async  {  } 
 }
