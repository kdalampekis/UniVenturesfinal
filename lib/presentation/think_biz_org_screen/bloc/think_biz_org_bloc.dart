import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/think_biz_org_screen/models/think_biz_org_model.dart';part 'think_biz_org_event.dart';part 'think_biz_org_state.dart';/// A bloc that manages the state of a ThinkBizOrg according to the event that is dispatched to it.
class ThinkBizOrgBloc extends Bloc<ThinkBizOrgEvent, ThinkBizOrgState> {ThinkBizOrgBloc(ThinkBizOrgState initialState) : super(initialState) { on<ThinkBizOrgInitialEvent>(_onInitialize); }

_onInitialize(ThinkBizOrgInitialEvent event, Emitter<ThinkBizOrgState> emit, ) async  { emit(state.copyWith(descriptionController: TextEditingController())); } 
 }
