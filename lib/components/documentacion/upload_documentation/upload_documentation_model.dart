import '/flutter_flow/flutter_flow_util.dart';
import 'upload_documentation_widget.dart' show UploadDocumentationWidget;
import 'package:flutter/material.dart';

class UploadDocumentationModel
    extends FlutterFlowModel<UploadDocumentationWidget> {
  ///  Local state fields for this component.

  bool file1 = false;

  bool file2 = false;

  bool file3 = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDoc1 = false;
  FFUploadedFile uploadedLocalFile_uploadDoc1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDoc1 = '';

  bool isDataUploading_uploadDoc2 = false;
  FFUploadedFile uploadedLocalFile_uploadDoc2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDoc2 = '';

  bool isDataUploading_uploadDoc3 = false;
  FFUploadedFile uploadedLocalFile_uploadDoc3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDoc3 = '';

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
