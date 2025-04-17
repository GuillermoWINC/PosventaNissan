import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'icono_estatus_model.dart';
export 'icono_estatus_model.dart';

class IconoEstatusWidget extends StatefulWidget {
  const IconoEstatusWidget({
    super.key,
    this.userDone,
    required this.task,
  });

  final UserDoneRecord? userDone;
  final AssignmentsRecord? task;

  @override
  State<IconoEstatusWidget> createState() => _IconoEstatusWidgetState();
}

class _IconoEstatusWidgetState extends State<IconoEstatusWidget> {
  late IconoEstatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconoEstatusModel());

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
      height: 45.0,
      constraints: BoxConstraints(
        maxWidth: 45.0,
        maxHeight: 45.0,
      ),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 3.0),
            child: Text(
              '${widget.task?.orderEstatus.toString()}${() {
                if (widget.task?.order == 0) {
                  return ' CB';
                } else if (widget.task?.order == 1) {
                  return ' B';
                } else if (widget.task?.order == 2) {
                  return ' P';
                } else {
                  return ' O';
                }
              }()}',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Nissan Brand',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  if (widget.userDone?.auditResult == 'Enviada')
                    Icon(
                      Icons.circle_outlined,
                      color: Color(0xFFE09E09),
                      size: 24.0,
                    ),
                  if (widget.userDone?.auditResult == 'Aprobada')
                    Icon(
                      Icons.check_circle_outline_rounded,
                      color: FlutterFlowTheme.of(context).success,
                      size: 24.0,
                    ),
                  if (widget.userDone?.auditResult == 'Rechazada')
                    Icon(
                      Icons.remove_circle_outline_rounded,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                  if ((widget.userDone?.auditResult != 'Rechazada') &&
                      (widget.userDone?.auditResult != 'Enviada') &&
                      (widget.userDone?.auditResult != 'Aprobada'))
                    Icon(
                      Icons.circle_sharp,
                      color: Color(0xFFCECECE),
                      size: 24.0,
                    ),
                ],
              ),
              if (widget.task?.reset == 1)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    unawaited(
                      () async {
                        await widget.userDone!.reference
                            .update(createUserDoneRecordData(
                          auditResult: '',
                        ));
                      }(),
                    );

                    context.pushNamed(EstatusNIBSAWidget.routeName);
                  },
                  child: Icon(
                    Icons.restart_alt_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
