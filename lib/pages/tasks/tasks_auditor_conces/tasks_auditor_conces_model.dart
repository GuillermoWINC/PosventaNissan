import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tasks_auditor_conces_widget.dart' show TasksAuditorConcesWidget;
import 'package:flutter/material.dart';

class TasksAuditorConcesModel
    extends FlutterFlowModel<TasksAuditorConcesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
  }
}
