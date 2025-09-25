import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ajustes_widget.dart' show AjustesWidget;
import 'package:flutter/material.dart';

class AjustesModel extends FlutterFlowModel<AjustesWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_politicaComercialUpload3 = false;
  FFUploadedFile uploadedLocalFile_politicaComercialUpload3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_politicaComercialUpload3 = '';

  bool isDataUploading_rankingConcurso = false;
  FFUploadedFile uploadedLocalFile_rankingConcurso =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_rankingConcurso = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    sideNavModel.dispose();
  }
}
