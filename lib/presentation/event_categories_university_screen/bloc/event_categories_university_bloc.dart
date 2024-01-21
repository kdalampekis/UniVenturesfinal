import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/event_categories_university_screen/models/event_categories_university_model.dart';part 'event_categories_university_event.dart';part 'event_categories_university_state.dart';/// A bloc that manages the state of a EventCategoriesUniversity according to the event that is dispatched to it.
class EventCategoriesUniversityBloc extends Bloc<EventCategoriesUniversityEvent, EventCategoriesUniversityState> {EventCategoriesUniversityBloc(EventCategoriesUniversityState initialState) : super(initialState) { on<EventCategoriesUniversityInitialEvent>(_onInitialize); }

_onInitialize(EventCategoriesUniversityInitialEvent event, Emitter<EventCategoriesUniversityState> emit, ) async  {  } 
 }
