import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/event_categories_technology_screen/models/event_categories_technology_model.dart';part 'event_categories_technology_event.dart';part 'event_categories_technology_state.dart';/// A bloc that manages the state of a EventCategoriesTechnology according to the event that is dispatched to it.
class EventCategoriesTechnologyBloc extends Bloc<EventCategoriesTechnologyEvent, EventCategoriesTechnologyState> {EventCategoriesTechnologyBloc(EventCategoriesTechnologyState initialState) : super(initialState) { on<EventCategoriesTechnologyInitialEvent>(_onInitialize); }

_onInitialize(EventCategoriesTechnologyInitialEvent event, Emitter<EventCategoriesTechnologyState> emit, ) async  {  } 
 }
