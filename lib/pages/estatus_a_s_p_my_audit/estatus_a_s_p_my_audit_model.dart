import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'estatus_a_s_p_my_audit_widget.dart' show EstatusASPMyAuditWidget;
import 'package:flutter/material.dart';

class EstatusASPMyAuditModel extends FlutterFlowModel<EstatusASPMyAuditWidget> {
  ///  Local state fields for this page.

  String? taskIDreset;

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
