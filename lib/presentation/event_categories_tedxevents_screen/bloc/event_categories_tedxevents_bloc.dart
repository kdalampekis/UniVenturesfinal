import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/event_categories_tedxevents_screen/models/event_categories_tedxevents_model.dart';part 'event_categories_tedxevents_event.dart';part 'event_categories_tedxevents_state.dart';/// A bloc that manages the state of a EventCategoriesTedxevents according to the event that is dispatched to it.
class EventCategoriesTedxeventsBloc extends Bloc<EventCategoriesTedxeventsEvent, EventCategoriesTedxeventsState> {EventCategoriesTedxeventsBloc(EventCategoriesTedxeventsState initialState) : super(initialState) { on<EventCategoriesTedxeventsInitialEvent>(_onInitialize); }

_onInitialize(EventCategoriesTedxeventsInitialEvent event, Emitter<EventCategoriesTedxeventsState> emit, ) async  {  } 
 }
