import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'concurso_v_e_conces_widget.dart' show ConcursoVEConcesWidget;
import 'package:flutter/material.dart';

class ConcursoVEConcesModel extends FlutterFlowModel<ConcursoVEConcesWidget> {
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
