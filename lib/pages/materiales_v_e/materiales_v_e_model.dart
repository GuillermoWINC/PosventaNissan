import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'materiales_v_e_widget.dart' show MaterialesVEWidget;
import 'package:flutter/material.dart';

class MaterialesVEModel extends FlutterFlowModel<MaterialesVEWidget> {
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
