import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:kwstas_s_application2/presentation/think_biz_upload_an_event_org_screen/models/think_biz_upload_an_event_org_model.dart';part 'think_biz_upload_an_event_org_event.dart';part 'think_biz_upload_an_event_org_state.dart';/// A bloc that manages the state of a ThinkBizUploadAnEventOrg according to the event that is dispatched to it.
class ThinkBizUploadAnEventOrgBloc extends Bloc<ThinkBizUploadAnEventOrgEvent, ThinkBizUploadAnEventOrgState> {ThinkBizUploadAnEventOrgBloc(ThinkBizUploadAnEventOrgState initialState) : super(initialState) { on<ThinkBizUploadAnEventOrgInitialEvent>(_onInitialize); }

_onInitialize(ThinkBizUploadAnEventOrgInitialEvent event, Emitter<ThinkBizUploadAnEventOrgState> emit, ) async  { emit(state.copyWith(languageController: TextEditingController(), jamwriteController: TextEditingController())); } 
 }
