import '/flutter_flow/flutter_flow_util.dart';
import 'upload_documentation_new_widget.dart' show UploadDocumentationNewWidget;
import 'package:flutter/material.dart';

class UploadDocumentationNewModel
    extends FlutterFlowModel<UploadDocumentationNewWidget> {
  ///  Local state fields for this component.

  bool file1 = false;

  bool file2 = false;

  bool file3 = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_newUploadDoc1 = false;
  FFUploadedFile uploadedLocalFile_newUploadDoc1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_newUploadDoc1 = '';

  bool isDataUploading_newUploadDoc2 = false;
  FFUploadedFile uploadedLocalFile_newUploadDoc2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_newUploadDoc2 = '';

  bool isDataUploading_newUploadDoc3 = false;
  FFUploadedFile uploadedLocalFile_newUploadDoc3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_newUploadDoc3 = '';

  // State field(s) for projectURL widget.
  FocusNode? projectURLFocusNode;
  TextEditingController? projectURLTextController;
  String? Function(BuildContext, String?)? projectURLTextControllerValidator;
  // State field(s) for tel widget.
  FocusNode? telFocusNode;
  TextEditingController? telTextController;
  String? Function(BuildContext, String?)? telTextControllerValidator;
  // State field(s) for wapp widget.
  FocusNode? wappFocusNode;
  TextEditingController? wappTextController;
  String? Function(BuildContext, String?)? wappTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectURLFocusNode?.dispose();
    projectURLTextController?.dispose();

    telFocusNode?.dispose();
    telTextController?.dispose();

    wappFocusNode?.dispose();
    wappTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
