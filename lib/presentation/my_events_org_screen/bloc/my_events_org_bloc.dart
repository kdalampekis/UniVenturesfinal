import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/my_events_org_screen/models/my_events_org_model.dart';part 'my_events_org_event.dart';part 'my_events_org_state.dart';/// A bloc that manages the state of a MyEventsOrg according to the event that is dispatched to it.
class MyEventsOrgBloc extends Bloc<MyEventsOrgEvent, MyEventsOrgState> {MyEventsOrgBloc(MyEventsOrgState initialState) : super(initialState) { on<MyEventsOrgInitialEvent>(_onInitialize); }

_onInitialize(MyEventsOrgInitialEvent event, Emitter<MyEventsOrgState> emit, ) async  {  } 
 }
