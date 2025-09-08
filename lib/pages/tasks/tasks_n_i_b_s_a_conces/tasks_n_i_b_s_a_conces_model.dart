import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasks_n_i_b_s_a_conces_widget.dart' show TasksNIBSAConcesWidget;
import 'package:flutter/material.dart';

class TasksNIBSAConcesModel extends FlutterFlowModel<TasksNIBSAConcesWidget> {
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
