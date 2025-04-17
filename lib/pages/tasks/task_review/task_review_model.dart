import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'task_review_widget.dart' show TaskReviewWidget;
import 'package:flutter/material.dart';

class TaskReviewModel extends FlutterFlowModel<TaskReviewWidget> {
  ///  Local state fields for this page.

  bool? estadoDR = false;

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
