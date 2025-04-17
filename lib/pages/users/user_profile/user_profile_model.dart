import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  Local state fields for this page.

  String? nivelInicio;

  String? nivelFinal;

  List<String> pruebaemail = ['guille@mac.com'];
  void addToPruebaemail(String item) => pruebaemail.add(item);
  void removeFromPruebaemail(String item) => pruebaemail.remove(item);
  void removeAtIndexFromPruebaemail(int index) => pruebaemail.removeAt(index);
  void insertAtIndexInPruebaemail(int index, String item) =>
      pruebaemail.insert(index, item);
  void updatePruebaemailAtIndex(int index, Function(String) updateFn) =>
      pruebaemail[index] = updateFn(pruebaemail[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Nivel widget.
  String? nivelValue;
  FormFieldController<String>? nivelValueController;
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
  // State field(s) for NewAuditor widget.
  String? newAuditorValue;
  FormFieldController<String>? newAuditorValueController;
  // Stores action output result for [Custom Action - getDocRefFromID] action in NewAuditor widget.
  DocumentReference? newAuditorDocRef;
  // State field(s) for DropdownASPM widget.
  String? dropdownASPMValue;
  FormFieldController<String>? dropdownASPMValueController;
  // Stores action output result for [Custom Action - getDocRefFromID] action in DropdownASPM widget.
  DocumentReference? newASPMDocRef2;
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

    sideNavModel.dispose();
  }
}
