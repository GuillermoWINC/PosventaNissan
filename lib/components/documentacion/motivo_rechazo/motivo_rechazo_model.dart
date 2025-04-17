import '/flutter_flow/flutter_flow_util.dart';
import 'motivo_rechazo_widget.dart' show MotivoRechazoWidget;
import 'package:flutter/material.dart';

class MotivoRechazoModel extends FlutterFlowModel<MotivoRechazoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
