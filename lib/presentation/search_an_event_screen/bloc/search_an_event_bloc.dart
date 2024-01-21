
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:equatable/equatable.dart';

part 'search_an_event_event.dart';
part 'search_an_event_state.dart';

class SearchAnEventBloc extends Bloc<SearchAnEventEvent, SearchAnEventState> {
  SearchAnEventBloc() : super(SearchAnEventState([], null, TextEditingController())) {
    on<SearchAnEventInitialized>(_onInitialize);
    on<PerformSearch>(_onPerformSearch);
  }

  void _onInitialize(SearchAnEventInitialized event, Emitter<SearchAnEventState> emit) {
    // Initialize your events data here
    final events = [
      {'name': 'PlanBiz', 'route': AppRoutes.planBizScreen},
      {'name': 'tedxauebPangea', 'route': AppRoutes.tedxauebPangeaMainEventScreen},
      {'name': 'TechConnect', 'route': AppRoutes.techconnectScreen},
      {'name': 'PartyatNtua', 'route': AppRoutes.partyAtNtuaScreen},
      {'name': 'OpenConference', 'route': AppRoutes.openConferenceScreen},
      {'name': 'ThinkBiz', 'route': AppRoutes.thinkBizScreen},
    ];
    emit(state.copyWith(availableEvents: events));
  }

  void _onPerformSearch(PerformSearch event, Emitter<SearchAnEventState> emit) {
    final searchTerm = event.searchTerm.toLowerCase();
    final eventToNavigate = state.availableEvents.firstWhere(
      (element) => element['name']?.toLowerCase() == searchTerm,
      orElse: () => {'name': '', 'route': ''},
    );

    if (eventToNavigate['name'] != null) {
      // Navigate to the route associated with the event
      NavigatorService.pushNamed(eventToNavigate['route']!);
    } else {
      emit(state.copyWith(errorMessage: 'Event not found'));
    }
  }
}
