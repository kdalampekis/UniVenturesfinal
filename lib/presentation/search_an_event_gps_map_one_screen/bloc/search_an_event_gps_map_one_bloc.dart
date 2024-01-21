import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/search_an_event_gps_map_one_screen/models/search_an_event_gps_map_one_model.dart';part 'search_an_event_gps_map_one_event.dart';part 'search_an_event_gps_map_one_state.dart';/// A bloc that manages the state of a SearchAnEventGpsMapOne according to the event that is dispatched to it.
class SearchAnEventGpsMapOneBloc extends Bloc<SearchAnEventGpsMapOneEvent, SearchAnEventGpsMapOneState> {SearchAnEventGpsMapOneBloc(SearchAnEventGpsMapOneState initialState) : super(initialState) { on<SearchAnEventGpsMapOneInitialEvent>(_onInitialize); }

_onInitialize(SearchAnEventGpsMapOneInitialEvent event, Emitter<SearchAnEventGpsMapOneState> emit, ) async  {  } 
 }
