import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bono_v_e_widget.dart' show BonoVEWidget;
import 'package:flutter/material.dart';

class BonoVEModel extends FlutterFlowModel<BonoVEWidget> {
  ///  Local state fields for this page.

  String? selectedPeriodoQ;

  String? selectedDealerRef;

  String? selectedAspmRef;

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
