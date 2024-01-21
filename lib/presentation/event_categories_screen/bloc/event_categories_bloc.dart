import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/event_categories_screen/models/event_categories_model.dart';part 'event_categories_event.dart';part 'event_categories_state.dart';/// A bloc that manages the state of a EventCategories according to the event that is dispatched to it.
class EventCategoriesBloc extends Bloc<EventCategoriesEvent, EventCategoriesState> {EventCategoriesBloc(EventCategoriesState initialState) : super(initialState) { on<EventCategoriesInitialEvent>(_onInitialize); }

_onInitialize(EventCategoriesInitialEvent event, Emitter<EventCategoriesState> emit, ) async  {  } 
 }
