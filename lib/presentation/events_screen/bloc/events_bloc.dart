import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/events_screen/models/events_model.dart';part 'events_event.dart';part 'events_state.dart';/// A bloc that manages the state of a Events according to the event that is dispatched to it.
class EventsBloc extends Bloc<EventsEvent, EventsState> {EventsBloc(EventsState initialState) : super(initialState) { on<EventsInitialEvent>(_onInitialize); }

_onInitialize(EventsInitialEvent event, Emitter<EventsState> emit, ) async  {  } 
 }
