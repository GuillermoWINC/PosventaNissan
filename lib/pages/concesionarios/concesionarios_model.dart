import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'concesionarios_widget.dart' show ConcesionariosWidget;
import 'package:flutter/material.dart';

class ConcesionariosModel extends FlutterFlowModel<ConcesionariosWidget> {
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
