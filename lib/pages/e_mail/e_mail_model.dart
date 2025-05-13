import '/backend/api_requests/api_calls.dart';
import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'e_mail_widget.dart' show EMailWidget;
import 'package:flutter/material.dart';

class EMailModel extends FlutterFlowModel<EMailWidget> {
  ///  Local state fields for this page.

  int? loop = 0;

  List<String> currentEmail = [];
  void addToCurrentEmail(String item) => currentEmail.add(item);
  void removeFromCurrentEmail(String item) => currentEmail.remove(item);
  void removeAtIndexFromCurrentEmail(int index) => currentEmail.removeAt(index);
  void insertAtIndexInCurrentEmail(int index, String item) =>
      currentEmail.insert(index, item);
  void updateCurrentEmailAtIndex(int index, Function(String) updateFn) =>
      currentEmail[index] = updateFn(currentEmail[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Asunto widget.
  FocusNode? asuntoFocusNode;
  TextEditingController? asuntoTextController;
  String? Function(BuildContext, String?)? asuntoTextControllerValidator;
  // State field(s) for Cuerpo widget.
  FocusNode? cuerpoFocusNode;
  TextEditingController? cuerpoTextController;
  String? Function(BuildContext, String?)? cuerpoTextControllerValidator;
  // State field(s) for Firma widget.
  FocusNode? firmaFocusNode;
  TextEditingController? firmaTextController;
  String? Function(BuildContext, String?)? firmaTextControllerValidator;
  // Stores action output result for [Backend Call - API (emailResend)] action in Button widget.
  ApiCallResponse? apiResultEmailMasivo;
  // Stores action output result for [Backend Call - API (emailResend)] action in Button widget.
  ApiCallResponse? apiResultEmailPrueba;
  // Stores action output result for [Backend Call - API (emailResend)] action in Button widget.
  ApiCallResponse? apiResultEmailUnoaUno;
  // Stores action output result for [Backend Call - API (emailResend)] action in Button widget.
  ApiCallResponse? apiResultEmailUnoaUnoTest;
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    asuntoFocusNode?.dispose();
    asuntoTextController?.dispose();

    cuerpoFocusNode?.dispose();
    cuerpoTextController?.dispose();

    firmaFocusNode?.dispose();
    firmaTextController?.dispose();

    sideNavModel.dispose();
  }
}
