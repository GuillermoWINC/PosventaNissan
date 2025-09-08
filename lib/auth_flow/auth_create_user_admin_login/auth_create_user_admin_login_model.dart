import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'auth_create_user_admin_login_widget.dart'
    show AuthCreateUserAdminLoginWidget;
import 'package:flutter/material.dart';

class AuthCreateUserAdminLoginModel
    extends FlutterFlowModel<AuthCreateUserAdminLoginWidget> {
  ///  Local state fields for this page.

  int loop = 0;

  int loopMax = 10;

  String? newUserID;

  ///  State fields for stateful widgets in this page.

  // State field(s) for roleDropdown widget.
  String? roleDropdownValue;
  FormFieldController<String>? roleDropdownValueController;
  // State field(s) for categoryDropdown widget.
  String? categoryDropdownValue;
  FormFieldController<String>? categoryDropdownValueController;
  // State field(s) for companySelector widget.
  String? companySelectorValue;
  FormFieldController<String>? companySelectorValueController;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // State field(s) for DropdownAuditor widget.
  String? dropdownAuditorValue;
  FormFieldController<String>? dropdownAuditorValueController;
  // Stores action output result for [Custom Action - getDocRefFromID] action in DropdownAuditor widget.
  DocumentReference? newAuditorDocRef;
  // State field(s) for DropDownASPM widget.
  String? dropDownASPMValue;
  FormFieldController<String>? dropDownASPMValueController;
  // Stores action output result for [Custom Action - getDocRefFromID] action in DropDownASPM widget.
  DocumentReference? newASPMDocRef;
  // Stores action output result for [Cloud Function - createUser2] action in Button widget.
  CreateUser2CloudFunctionCallResponse? newUser2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userID2;
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();

    sideNavModel.dispose();
  }
}
