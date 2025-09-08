import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'plantilla_pagina_widget.dart' show PlantillaPaginaWidget;
import 'package:flutter/material.dart';

class PlantillaPaginaModel extends FlutterFlowModel<PlantillaPaginaWidget> {
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
