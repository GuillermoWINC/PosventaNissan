import '/backend/backend.dart';
import '/components/documentacion/upload_documentation/upload_documentation_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'task_model.dart';
export 'task_model.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({
    super.key,
    required this.userDocRef,
    required this.userDoneDoc,
  });

  final DocumentReference? userDocRef;
  final UserDoneRecord? userDoneDoc;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late TaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskModel());

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
      stream: AssignmentsRecord.getDocument(widget.userDoneDoc!.taskRef!),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StreamBuilder<List<UserDoneRecord>>(
                  stream: queryUserDoneRecord(
                    queryBuilder: (userDoneRecord) => userDoneRecord
                        .where(
                          'userRef',
                          isEqualTo: widget.userDocRef,
                        )
                        .where(
                          'taskRef',
                          isEqualTo: card11AssignmentsRecord.reference,
                        ),
                    singleRecord: true,
                  ),
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
                    List<UserDoneRecord> rowUserDoneRecordList = snapshot.data!;
                    final rowUserDoneRecord = rowUserDoneRecordList.isNotEmpty
                        ? rowUserDoneRecordList.first
                        : null;

                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            if (rowUserDoneRecord?.auditResult == 'Enviada')
                              Icon(
                                Icons.circle_outlined,
                                color: Color(0xFFE09E09),
                                size: 32.0,
                              ),
                            if (rowUserDoneRecord?.auditResult == 'Aprobada')
                              Icon(
                                Icons.check_circle_outline_rounded,
                                color: FlutterFlowTheme.of(context).success,
                                size: 32.0,
                              ),
                            if (rowUserDoneRecord?.auditResult == 'Rechazada')
                              Icon(
                                Icons.remove_circle_outline_rounded,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 32.0,
                              ),
                            if ((rowUserDoneRecord?.auditResult !=
                                    'Rechazada') &&
                                (rowUserDoneRecord?.auditResult != 'Enviada') &&
                                (rowUserDoneRecord?.auditResult != 'Aprobada'))
                              Icon(
                                Icons.circle_sharp,
                                color: Color(0xFFCECECE),
                                size: 32.0,
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                TaskDetailsConcesWidget.routeName,
                                queryParameters: {
                                  'userDocRef': serializeParam(
                                    widget.userDocRef,
                                    ParamType.DocumentReference,
                                  ),
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
                            child: Text(
                              card11AssignmentsRecord.taskName,
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Nissan Brand',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                StreamBuilder<UsersRecord>(
                  stream: UsersRecord.getDocument(widget.userDocRef!),
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

                    final rowUsersRecord = snapshot.data!;

                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Stack(
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
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
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: UploadDocumentationWidget(
                                              userDoneDoc: widget.userDoneDoc!,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  text: 'Completar',
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
                            ],
                          ),
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
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                TaskDetailsConcesWidget.routeName,
                                queryParameters: {
                                  'userDocRef': serializeParam(
                                    widget.userDocRef,
                                    ParamType.DocumentReference,
                                  ),
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
                      ],
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
