import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'incentivos_v_e_widget.dart' show IncentivosVEWidget;
import 'package:flutter/material.dart';

class IncentivosVEModel extends FlutterFlowModel<IncentivosVEWidget> {
  ///  Local state fields for this page.

  String? selectedPeriodoQ;

  String? selectedDealerRef;

  String? selectedAspmRef;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<BonoVeRecord>();
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    sideNavModel.dispose();
  }
}
