import '/flutter_flow/flutter_flow_util.dart';
import 'politica_comercial_update_widget.dart'
    show PoliticaComercialUpdateWidget;
import 'package:flutter/material.dart';

class PoliticaComercialUpdateModel
    extends FlutterFlowModel<PoliticaComercialUpdateWidget> {
  ///  Local state fields for this component.

  bool? docPolCom = false;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
