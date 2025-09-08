import '/auth/firebase_auth/auth_util.dart';
import '/components/editar_material_v_e/editar_material_v_e_widget.dart';
import '/components/ver_material_v_e/ver_material_v_e_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'material_v_e_model.dart';
export 'material_v_e_model.dart';

class MaterialVEWidget extends StatefulWidget {
  const MaterialVEWidget({
    super.key,
    required this.tituloMaterial,
    required this.descripcMaterial,
    this.imagenMaterial,
    required this.currentDoc,
    required this.zipMaterial,
  });

  final String? tituloMaterial;
  final String? descripcMaterial;
  final String? imagenMaterial;
  final DocumentReference? currentDoc;
  final String? zipMaterial;

  @override
  State<MaterialVEWidget> createState() => _MaterialVEWidgetState();
}

class _MaterialVEWidgetState extends State<MaterialVEWidget> {
  late MaterialVEModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaterialVEModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 330.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        widget.imagenMaterial!,
                        width: 200.0,
                        height: 290.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.tituloMaterial,
                                  'titulo',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Nissan Brand',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget.descripcMaterial,
                                  'descrip',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nissan Brand',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return WebViewAware(
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: VerMaterialVEWidget(
                                          nombre: widget.tituloMaterial!,
                                          imagen: widget.imagenMaterial!,
                                          materialDoc: widget.currentDoc!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              text: 'Ver',
                              icon: Icon(
                                Icons.remove_red_eye,
                                size: 22.0,
                              ),
                              options: FFButtonOptions(
                                width: 100.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Nissan Brand',
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                await downloadFile(
                                  filename: valueOrDefault<String>(
                                    widget.tituloMaterial,
                                    'titulo',
                                  ),
                                  url: valueOrDefault<String>(
                                    widget.zipMaterial,
                                    'zip',
                                  ),
                                );
                              },
                              text: 'Descargar',
                              icon: Icon(
                                Icons.download_rounded,
                                size: 22.0,
                              ),
                              options: FFButtonOptions(
                                width: 120.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Nissan Brand',
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                            if (valueOrDefault(currentUserDocument?.role, '') ==
                                'NIBSA')
                              AuthUserStreamWidget(
                                builder: (context) => FFButtonWidget(
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: EditarMaterialVEWidget(
                                              nombre: widget.tituloMaterial!,
                                              descripcion:
                                                  widget.descripcMaterial!,
                                              imagen: widget.imagenMaterial!,
                                              materialDoc: widget.currentDoc!,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  text: 'Editar',
                                  icon: Icon(
                                    Icons.edit,
                                    size: 24.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 120.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Nissan Brand',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                ),
                              ),
                            if (valueOrDefault(currentUserDocument?.role, '') ==
                                'NIBSA')
                              AuthUserStreamWidget(
                                builder: (context) => FFButtonWidget(
                                  onPressed: () async {
                                    await widget.currentDoc!.delete();
                                  },
                                  text: 'Eliminar',
                                  icon: Icon(
                                    Icons.delete_outline,
                                    size: 24.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 120.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Nissan Brand',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
