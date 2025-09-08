import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'estatus_conces_widget.dart' show EstatusConcesWidget;
import 'package:flutter/material.dart';

class EstatusConcesModel extends FlutterFlowModel<EstatusConcesWidget> {
  ///  Local state fields for this page.

  List<String> emailStringList = [];
  void addToEmailStringList(String item) => emailStringList.add(item);
  void removeFromEmailStringList(String item) => emailStringList.remove(item);
  void removeAtIndexFromEmailStringList(int index) =>
      emailStringList.removeAt(index);
  void insertAtIndexInEmailStringList(int index, String item) =>
      emailStringList.insert(index, item);
  void updateEmailStringListAtIndex(int index, Function(String) updateFn) =>
      emailStringList[index] = updateFn(emailStringList[index]);

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
