import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'icono_estatus_conces_model.dart';
export 'icono_estatus_conces_model.dart';

class IconoEstatusConcesWidget extends StatefulWidget {
  const IconoEstatusConcesWidget({
    super.key,
    this.userDone,
  });

  final UserDoneRecord? userDone;

  @override
  State<IconoEstatusConcesWidget> createState() =>
      _IconoEstatusConcesWidgetState();
}

class _IconoEstatusConcesWidgetState extends State<IconoEstatusConcesWidget> {
  late IconoEstatusConcesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconoEstatusConcesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.estadoTarea = widget.userDone?.auditResult;
      safeSetState(() {});
    });

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
      height: 24.0,
      decoration: BoxDecoration(),
      child: StreamBuilder<AssignmentsRecord>(
        stream: AssignmentsRecord.getDocument(widget.userDone!.taskRef!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).secondary,
                  ),
                ),
              ),
            );
          }

          final columnAssignmentsRecord = snapshot.data!;

          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      if (_model.estadoTarea == 'Enviada')
                        Icon(
                          Icons.circle_outlined,
                          color: Color(0xFFE09E09),
                          size: 24.0,
                        ),
                      if (_model.estadoTarea == 'Aprobada')
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: FlutterFlowTheme.of(context).success,
                          size: 24.0,
                        ),
                      if (_model.estadoTarea == 'Rechazada')
                        Icon(
                          Icons.remove_circle_outline_rounded,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                      if ((_model.estadoTarea != 'Rechazada') &&
                          (_model.estadoTarea != 'Enviada') &&
                          (_model.estadoTarea != 'Aprobada'))
                        Icon(
                          Icons.circle_sharp,
                          color: Color(0xFFCECECE),
                          size: 24.0,
                        ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 3.0),
                    child: Text(
                      columnAssignmentsRecord.taskName,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nissan Brand',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
