import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/event_categories_startups_screen/models/event_categories_startups_model.dart';part 'event_categories_startups_event.dart';part 'event_categories_startups_state.dart';/// A bloc that manages the state of a EventCategoriesStartups according to the event that is dispatched to it.
class EventCategoriesStartupsBloc extends Bloc<EventCategoriesStartupsEvent, EventCategoriesStartupsState> {EventCategoriesStartupsBloc(EventCategoriesStartupsState initialState) : super(initialState) { on<EventCategoriesStartupsInitialEvent>(_onInitialize); }

_onInitialize(EventCategoriesStartupsInitialEvent event, Emitter<EventCategoriesStartupsState> emit, ) async  {  } 
 }
