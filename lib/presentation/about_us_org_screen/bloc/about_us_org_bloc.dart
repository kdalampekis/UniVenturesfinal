import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/about_us_org_screen/models/about_us_org_model.dart';part 'about_us_org_event.dart';part 'about_us_org_state.dart';/// A bloc that manages the state of a AboutUsOrg according to the event that is dispatched to it.
class AboutUsOrgBloc extends Bloc<AboutUsOrgEvent, AboutUsOrgState> {AboutUsOrgBloc(AboutUsOrgState initialState) : super(initialState) { on<AboutUsOrgInitialEvent>(_onInitialize); }

_onInitialize(AboutUsOrgInitialEvent event, Emitter<AboutUsOrgState> emit, ) async  {  } 
 }
