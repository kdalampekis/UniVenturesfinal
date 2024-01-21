import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/loading_screen/models/loading_model.dart';part 'loading_event.dart';part 'loading_state.dart';/// A bloc that manages the state of a Loading according to the event that is dispatched to it.
class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {LoadingBloc(LoadingState initialState) : super(initialState) { on<LoadingInitialEvent>(_onInitialize); }

_onInitialize(LoadingInitialEvent event, Emitter<LoadingState> emit, ) async  { Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.loginSignupScreen, );}); } 
 }
