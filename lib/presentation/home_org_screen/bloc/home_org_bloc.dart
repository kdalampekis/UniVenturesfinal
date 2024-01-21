import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/home_org_screen/models/home_org_model.dart';part 'home_org_event.dart';part 'home_org_state.dart';/// A bloc that manages the state of a HomeOrg according to the event that is dispatched to it.
class HomeOrgBloc extends Bloc<HomeOrgEvent, HomeOrgState> {HomeOrgBloc(HomeOrgState initialState) : super(initialState) { on<HomeOrgInitialEvent>(_onInitialize); }

_onInitialize(HomeOrgInitialEvent event, Emitter<HomeOrgState> emit, ) async  {  } 
 }
