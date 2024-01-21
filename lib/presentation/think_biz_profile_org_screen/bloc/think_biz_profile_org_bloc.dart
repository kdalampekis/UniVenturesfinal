import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/think_biz_profile_org_screen/models/think_biz_profile_org_model.dart';part 'think_biz_profile_org_event.dart';part 'think_biz_profile_org_state.dart';/// A bloc that manages the state of a ThinkBizProfileOrg according to the event that is dispatched to it.
class ThinkBizProfileOrgBloc extends Bloc<ThinkBizProfileOrgEvent, ThinkBizProfileOrgState> {ThinkBizProfileOrgBloc(ThinkBizProfileOrgState initialState) : super(initialState) { on<ThinkBizProfileOrgInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<ThinkBizProfileOrgState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<ThinkBizProfileOrgState> emit, ) { emit(state.copyWith(isShowPassword1: event.value)); } 
_onInitialize(ThinkBizProfileOrgInitialEvent event, Emitter<ThinkBizProfileOrgState> emit, ) async  { emit(state.copyWith(appTitleController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true, isShowPassword1: true)); } 
 }
