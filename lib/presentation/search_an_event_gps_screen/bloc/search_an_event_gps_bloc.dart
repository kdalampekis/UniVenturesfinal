import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/search_an_event_gps_screen/models/search_an_event_gps_model.dart';part 'search_an_event_gps_event.dart';part 'search_an_event_gps_state.dart';/// A bloc that manages the state of a SearchAnEventGps according to the event that is dispatched to it.
class SearchAnEventGpsBloc extends Bloc<SearchAnEventGpsEvent, SearchAnEventGpsState> {SearchAnEventGpsBloc(SearchAnEventGpsState initialState) : super(initialState) { on<SearchAnEventGpsInitialEvent>(_onInitialize); }

_onInitialize(SearchAnEventGpsInitialEvent event, Emitter<SearchAnEventGpsState> emit, ) async  {  } 
 }
