import '/flutter_flow/flutter_flow_util.dart';
import 'subir_material_v_e_widget.dart' show SubirMaterialVEWidget;
import 'package:flutter/material.dart';

class SubirMaterialVEModel extends FlutterFlowModel<SubirMaterialVEWidget> {
  ///  Local state fields for this component.

  bool material = false;

  bool botonSeleccionar = false;

  bool material2 = false;

  bool botonSeleccionar2 = false;

  String? imagen;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_uploadImage = false;
  FFUploadedFile uploadedLocalFile_uploadImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadImage = '';

  bool isDataUploading_uploadMaterial = false;
  FFUploadedFile uploadedLocalFile_uploadMaterial =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadMaterial = '';

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
