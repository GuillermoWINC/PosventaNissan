import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'activity_log_list_model.dart';
export 'activity_log_list_model.dart';

class ActivityLogListWidget extends StatefulWidget {
  const ActivityLogListWidget({
    super.key,
    required this.activityLog,
    this.userCompany,
  });

  final ActivityLogRecord? activityLog;
  final String? userCompany;

  @override
  State<ActivityLogListWidget> createState() => _ActivityLogListWidgetState();
}

class _ActivityLogListWidgetState extends State<ActivityLogListWidget> {
  late ActivityLogListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityLogListModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 7.0,
            color: Color(0x2F1D2429),
            offset: Offset(
              0.0,
              3.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  dateTimeFormat(
                    "d/M/y H:mm",
                    widget.activityLog!.timestamp!,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Nissan Brand',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              if ((valueOrDefault(currentUserDocument?.role, '') == 'NIBSA') ||
                  (valueOrDefault(currentUserDocument?.role, '') ==
                      'Auditor') ||
                  (valueOrDefault(currentUserDocument?.role, '') == 'ASPM'))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Text(
                      valueOrDefault<String>(
                        widget.userCompany,
                        'Concesionario',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Nissan Brand',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.activityLog?.action,
                    'Acción',
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Nissan Brand',
                        color: () {
                          if (widget.activityLog?.action ==
                              'Solicitud Aprobada') {
                            return FlutterFlowTheme.of(context).success;
                          } else if (widget.activityLog?.action ==
                              'Solicitud Rechazada') {
                            return FlutterFlowTheme.of(context).secondary;
                          } else if (widget.activityLog?.action ==
                              'Solicitud Enviada') {
                            return Color(0xFFF7B007);
                          } else {
                            return FlutterFlowTheme.of(context).primary;
                          }
                        }(),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.activityLog?.details,
                    'Detalles',
                  ),
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Nissan Brand',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
