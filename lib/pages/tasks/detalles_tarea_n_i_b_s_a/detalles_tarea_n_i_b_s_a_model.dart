import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalles_tarea_n_i_b_s_a_widget.dart' show DetallesTareaNIBSAWidget;
import 'package:flutter/material.dart';

class DetallesTareaNIBSAModel
    extends FlutterFlowModel<DetallesTareaNIBSAWidget> {
  ///  Local state fields for this page.

  int? loop = 0;

  int? loopMax = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? numConces;
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
