import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_authenticated_widget.dart' show ProfileAuthenticatedWidget;
import 'package:flutter/material.dart';

class ProfileAuthenticatedModel
    extends FlutterFlowModel<ProfileAuthenticatedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for company widget.
  FocusNode? companyFocusNode;
  TextEditingController? companyTextController;
  String? Function(BuildContext, String?)? companyTextControllerValidator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // Stores action output result for [Custom Action - updateUserEmailSimple] action in Button widget.
  String? resultEmail;
  // State field(s) for auditor widget.
  FocusNode? auditorFocusNode;
  TextEditingController? auditorTextController;
  String? Function(BuildContext, String?)? auditorTextControllerValidator;
  // State field(s) for aspm widget.
  FocusNode? aspmFocusNode;
  TextEditingController? aspmTextController;
  String? Function(BuildContext, String?)? aspmTextControllerValidator;
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    companyFocusNode?.dispose();
    companyTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    auditorFocusNode?.dispose();
    auditorTextController?.dispose();

    aspmFocusNode?.dispose();
    aspmTextController?.dispose();

    sideNavModel.dispose();
  }
}
