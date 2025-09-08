import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'panel_control_widget.dart' show PanelControlWidget;
import 'package:flutter/material.dart';

class PanelControlModel extends FlutterFlowModel<PanelControlWidget> {
  ///  Local state fields for this page.

  DocumentReference? aspm;

  double? totalConces;

  double? numNoCumple;

  double? numBronce;

  double? numPlata;

  double? numOro;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in panelControl widget.
  List<UsersRecord>? totalConcesionarios;
  // Stores action output result for [Firestore Query - Query a collection] action in panelControl widget.
  List<UsersRecord>? totalNoCumple;
  // Stores action output result for [Firestore Query - Query a collection] action in panelControl widget.
  List<UsersRecord>? totalBronce;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
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
