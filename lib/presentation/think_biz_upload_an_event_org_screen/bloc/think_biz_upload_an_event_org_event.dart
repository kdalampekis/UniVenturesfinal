// ignore_for_file: must_be_immutable

part of 'think_biz_upload_an_event_org_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ThinkBizUploadAnEventOrg widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThinkBizUploadAnEventOrgEvent extends Equatable {}

/// Event that is dispatched when the ThinkBizUploadAnEventOrg widget is first created.
class ThinkBizUploadAnEventOrgInitialEvent
    extends ThinkBizUploadAnEventOrgEvent {
  @override
  List<Object?> get props => [];
}
