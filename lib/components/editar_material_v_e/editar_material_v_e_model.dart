import '/flutter_flow/flutter_flow_util.dart';
import 'editar_material_v_e_widget.dart' show EditarMaterialVEWidget;
import 'package:flutter/material.dart';

class EditarMaterialVEModel extends FlutterFlowModel<EditarMaterialVEWidget> {
  ///  Local state fields for this component.

  bool material = false;

  bool botonSeleccionar = false;

  bool material2 = false;

  bool botonSeleccionar2 = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_updateImage = false;
  FFUploadedFile uploadedLocalFile_updateImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_updateImage = '';

  bool isDataUploading_updateMaterial = false;
  FFUploadedFile uploadedLocalFile_updateMaterial =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_updateMaterial = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
