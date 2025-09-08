import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in home widget.
  List<AssignmentsRecord>? tareasOro;
  // Stores action output result for [Firestore Query - Query a collection] action in home widget.
  List<AssignmentsRecord>? tareasPlata;
  // Stores action output result for [Firestore Query - Query a collection] action in home widget.
  List<UsersRecord>? concesionariosTodos;
  // Stores action output result for [Firestore Query - Query a collection] action in home widget.
  List<UsersRecord>? aspmTodos;
  // Stores action output result for [Firestore Query - Query a collection] action in home widget.
  List<AssignmentsRecord>? tareasBronce;
  // Stores action output result for [Firestore Query - Query a collection] action in home widget.
  List<AssignmentsRecord>? tasksAll;
  // Stores action output result for [Firestore Query - Query a collection] action in home widget.
  List<UsersRecord>? concesionarios;
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
