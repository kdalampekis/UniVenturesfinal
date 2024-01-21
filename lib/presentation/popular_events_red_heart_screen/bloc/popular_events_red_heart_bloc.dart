import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/popular_events_red_heart_screen/models/popular_events_red_heart_model.dart';part 'popular_events_red_heart_event.dart';part 'popular_events_red_heart_state.dart';/// A bloc that manages the state of a PopularEventsRedHeart according to the event that is dispatched to it.
class PopularEventsRedHeartBloc extends Bloc<PopularEventsRedHeartEvent, PopularEventsRedHeartState> {PopularEventsRedHeartBloc(PopularEventsRedHeartState initialState) : super(initialState) { on<PopularEventsRedHeartInitialEvent>(_onInitialize); }

_onInitialize(PopularEventsRedHeartInitialEvent event, Emitter<PopularEventsRedHeartState> emit, ) async  {  } 
 }
