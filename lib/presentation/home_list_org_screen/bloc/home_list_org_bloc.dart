import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/home_list_org_screen/models/home_list_org_model.dart';part 'home_list_org_event.dart';part 'home_list_org_state.dart';/// A bloc that manages the state of a HomeListOrg according to the event that is dispatched to it.
class HomeListOrgBloc extends Bloc<HomeListOrgEvent, HomeListOrgState> {HomeListOrgBloc(HomeListOrgState initialState) : super(initialState) { on<HomeListOrgInitialEvent>(_onInitialize); }

_onInitialize(HomeListOrgInitialEvent event, Emitter<HomeListOrgState> emit, ) async  {  } 
 }
