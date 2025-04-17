import '/backend/backend.dart';
import '/components/varios/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_task_widget.dart' show CreateTaskWidget;
import 'package:flutter/material.dart';

class CreateTaskModel extends FlutterFlowModel<CreateTaskWidget> {
  ///  Local state fields for this page.
  /// inicio
  int loop = 0;

  /// número de concesionarios
  int loopMax = 1;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for taskName widget.
  FocusNode? taskNameFocusNode;
  TextEditingController? taskNameTextController;
  String? Function(BuildContext, String?)? taskNameTextControllerValidator;
  String? _taskNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for taskDescription widget.
  FocusNode? taskDescriptionFocusNode;
  TextEditingController? taskDescriptionTextController;
  String? Function(BuildContext, String?)?
      taskDescriptionTextControllerValidator;
  // State field(s) for taskCategory widget.
  String? taskCategoryValue;
  FormFieldController<String>? taskCategoryValueController;
  // State field(s) for taskYype widget.
  List<String>? taskYypeValue;
  FormFieldController<List<String>>? taskYypeValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AssignmentsRecord? newTask;
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    taskNameTextControllerValidator = _taskNameTextControllerValidator;
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    taskNameFocusNode?.dispose();
    taskNameTextController?.dispose();

    taskDescriptionFocusNode?.dispose();
    taskDescriptionTextController?.dispose();

    sideNavModel.dispose();
  }
}
