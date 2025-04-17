import '/components/date_picker_widget.dart';
import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'activity_log_widget.dart' show ActivityLogWidget;
import 'package:flutter/material.dart';

class ActivityLogModel extends FlutterFlowModel<ActivityLogWidget> {
  ///  Local state fields for this page.

  DocumentReference? seleccionDropdown;

  ///  State fields for stateful widgets in this page.

  // State field(s) for selector widget.
  String? selectorValue;
  FormFieldController<String>? selectorValueController;
  // Model for datePicker component.
  late DatePickerModel datePickerModel;
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    datePickerModel = createModel(context, () => DatePickerModel());
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    datePickerModel.dispose();
    sideNavModel.dispose();
  }
}
