import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'tasks_all_widget.dart' show TasksAllWidget;
import 'package:flutter/material.dart';

class TasksAllModel extends FlutterFlowModel<TasksAllWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
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
