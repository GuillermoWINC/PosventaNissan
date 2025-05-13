import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'task_auditor_conces_model.dart';
export 'task_auditor_conces_model.dart';

class TaskAuditorConcesWidget extends StatefulWidget {
  const TaskAuditorConcesWidget({
    super.key,
    required this.taskDocRef,
    required this.userDoneDoc,
  });

  final DocumentReference? taskDocRef;
  final UserDoneRecord? userDoneDoc;

  @override
  State<TaskAuditorConcesWidget> createState() =>
      _TaskAuditorConcesWidgetState();
}

class _TaskAuditorConcesWidgetState extends State<TaskAuditorConcesWidget> {
  late TaskAuditorConcesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskAuditorConcesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AssignmentsRecord>(
      stream: AssignmentsRecord.getDocument(widget.taskDocRef!),
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

        final card11AssignmentsRecord = snapshot.data!;

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
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    if (widget.userDoneDoc?.auditResult == 'Enviada')
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE09E09),
                        size: 32.0,
                      ),
                    if (widget.userDoneDoc?.auditResult == 'Aprobada')
                      Icon(
                        Icons.check_circle_outline_rounded,
                        color: FlutterFlowTheme.of(context).success,
                        size: 32.0,
                      ),
                    if (widget.userDoneDoc?.auditResult == 'Rechazada')
                      Icon(
                        Icons.remove_circle_outline_rounded,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 32.0,
                      ),
                    if ((widget.userDoneDoc?.auditResult != 'Rechazada') &&
                        (widget.userDoneDoc?.auditResult != 'Enviada') &&
                        (widget.userDoneDoc?.auditResult != 'Aprobada'))
                      Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFCECECE),
                        size: 32.0,
                      ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            card11AssignmentsRecord.taskName,
                            'task',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Nissan Brand',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if ((widget.userDoneDoc?.auditResult != null &&
                            widget.userDoneDoc?.auditResult != '') &&
                        (valueOrDefault(currentUserDocument?.role, '') ==
                            'Auditor'))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FlutterFlowIconButton(
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                TaskReviewWidget.routeName,
                                queryParameters: {
                                  'userDoneDoc': serializeParam(
                                    widget.userDoneDoc,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'userDoneDoc': widget.userDoneDoc,
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    if ((valueOrDefault(currentUserDocument?.role, '') ==
                            'Auditor') &&
                        ((widget.userDoneDoc?.auditResult == 'Enviada') ||
                            ((widget.userDoneDoc?.auditResult ==
                                    'Rechazada') &&
                                (widget.userDoneDoc?.taskDone == true))))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                TaskReviewWidget.routeName,
                                queryParameters: {
                                  'userDoneDoc': serializeParam(
                                    widget.userDoneDoc,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'userDoneDoc': widget.userDoneDoc,
                                },
                              );
                            },
                            text: 'Revisar',
                            options: FFButtonOptions(
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
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
