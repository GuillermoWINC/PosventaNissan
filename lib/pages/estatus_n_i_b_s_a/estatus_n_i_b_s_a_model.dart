import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'estatus_n_i_b_s_a_widget.dart' show EstatusNIBSAWidget;
import 'package:flutter/material.dart';

class EstatusNIBSAModel extends FlutterFlowModel<EstatusNIBSAWidget> {
  ///  Local state fields for this page.

  String? taskIDreset;

  DocumentReference? aspm;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Cloud Function - resetTaskAll] action in IconButton widget.
  ResetTaskAllCloudFunctionCallResponse? cloudFunctionu0i;
  // State field(s) for aspm widget.
  String? aspmValue;
  FormFieldController<String>? aspmValueController;
  // State field(s) for grupo widget.
  String? grupoValue;
  FormFieldController<String>? grupoValueController;
  // State field(s) for nivel widget.
  String? nivelValue;
  FormFieldController<String>? nivelValueController;
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
