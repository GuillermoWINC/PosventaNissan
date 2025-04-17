import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'task_auditor_model.dart';
export 'task_auditor_model.dart';

class TaskAuditorWidget extends StatefulWidget {
  const TaskAuditorWidget({
    super.key,
    required this.taskDocRef,
    required this.taskDoneDocument,
    required this.userDocRef,
  });

  final DocumentReference? taskDocRef;
  final UserDoneRecord? taskDoneDocument;
  final DocumentReference? userDocRef;

  @override
  State<TaskAuditorWidget> createState() => _TaskAuditorWidgetState();
}

class _TaskAuditorWidgetState extends State<TaskAuditorWidget> {
  late TaskAuditorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskAuditorModel());

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
          height: 70.0,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    if (widget.taskDoneDocument?.auditResult == 'Enviada')
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE09E09),
                        size: 32.0,
                      ),
                    if (widget.taskDoneDocument?.auditResult == 'Aprobada')
                      Icon(
                        Icons.check_circle_outline_rounded,
                        color: FlutterFlowTheme.of(context).success,
                        size: 32.0,
                      ),
                    if (widget.taskDoneDocument?.auditResult == 'Rechazada')
                      Icon(
                        Icons.remove_circle_outline_rounded,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 32.0,
                      ),
                    if (widget.taskDoneDocument?.auditResult == 'Pendiente')
                      Icon(
                        Icons.circle,
                        color: Color(0xFFCBCBCB),
                        size: 32.0,
                      ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 20.0, 0.0),
                    child: StreamBuilder<UsersRecord>(
                      stream: UsersRecord.getDocument(
                          widget.taskDoneDocument!.userRef!),
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

                        final columnUsersRecord = snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  card11AssignmentsRecord.taskName,
                                  'task',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Nissan Brand',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  columnUsersRecord.company,
                                  'conces',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Nissan Brand',
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Stack(
                  children: [
                    if (((valueOrDefault(currentUserDocument?.role, '') ==
                                'Auditor') &&
                            ((widget.taskDoneDocument?.auditResult ==
                                    'Enviada') ||
                                ((widget.taskDoneDocument?.auditResult ==
                                        'Rechazada') &&
                                    (widget.taskDoneDocument?.taskDone ==
                                        true)))) &&
                        responsiveVisibility(
                          context: context,
                          phone: false,
                        ))
                      AuthUserStreamWidget(
                        builder: (context) => FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              TaskReviewWidget.routeName,
                              queryParameters: {
                                'userDoneDoc': serializeParam(
                                  widget.taskDoneDocument,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'userDoneDoc': widget.taskDoneDocument,
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
                                  useGoogleFonts: false,
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
                  ],
                ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  FlutterFlowIconButton(
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.chevron_right,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        TaskReviewWidget.routeName,
                        queryParameters: {
                          'userDoneDoc': serializeParam(
                            widget.taskDoneDocument,
                            ParamType.Document,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          'userDoneDoc': widget.taskDoneDocument,
                        },
                      );
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
