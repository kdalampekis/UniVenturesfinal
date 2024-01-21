import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/search_an_event_gps_map_screen/models/search_an_event_gps_map_model.dart';part 'search_an_event_gps_map_event.dart';part 'search_an_event_gps_map_state.dart';/// A bloc that manages the state of a SearchAnEventGpsMap according to the event that is dispatched to it.
class SearchAnEventGpsMapBloc extends Bloc<SearchAnEventGpsMapEvent, SearchAnEventGpsMapState> {SearchAnEventGpsMapBloc(SearchAnEventGpsMapState initialState) : super(initialState) { on<SearchAnEventGpsMapInitialEvent>(_onInitialize); }

_onInitialize(SearchAnEventGpsMapInitialEvent event, Emitter<SearchAnEventGpsMapState> emit, ) async  {  } 
 }
