import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'task_details_conces_widget.dart' show TaskDetailsConcesWidget;
import 'package:flutter/material.dart';

class TaskDetailsConcesModel extends FlutterFlowModel<TaskDetailsConcesWidget> {
  ///  Local state fields for this page.

  bool? estadoDR2 = false;

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
