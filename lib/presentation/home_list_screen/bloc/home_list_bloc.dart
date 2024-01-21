import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/home_list_screen/models/home_list_model.dart';part 'home_list_event.dart';part 'home_list_state.dart';/// A bloc that manages the state of a HomeList according to the event that is dispatched to it.
class HomeListBloc extends Bloc<HomeListEvent, HomeListState> {HomeListBloc(HomeListState initialState) : super(initialState) { on<HomeListInitialEvent>(_onInitialize); }

_onInitialize(HomeListInitialEvent event, Emitter<HomeListState> emit, ) async  {  } 
 }
