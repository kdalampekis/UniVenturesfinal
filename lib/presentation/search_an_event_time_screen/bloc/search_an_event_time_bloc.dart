import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/search_an_event_time_screen/models/search_an_event_time_model.dart';part 'search_an_event_time_event.dart';part 'search_an_event_time_state.dart';/// A bloc that manages the state of a SearchAnEventTime according to the event that is dispatched to it.
class SearchAnEventTimeBloc extends Bloc<SearchAnEventTimeEvent, SearchAnEventTimeState> {SearchAnEventTimeBloc(SearchAnEventTimeState initialState) : super(initialState) { on<SearchAnEventTimeInitialEvent>(_onInitialize); }

_onInitialize(SearchAnEventTimeInitialEvent event, Emitter<SearchAnEventTimeState> emit, ) async  { emit(state.copyWith(editTextController: TextEditingController())); } 
 }
