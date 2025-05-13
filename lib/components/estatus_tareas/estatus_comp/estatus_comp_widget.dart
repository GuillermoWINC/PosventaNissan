import '/backend/backend.dart';
import '/components/estatus_tareas/icono_estatus/icono_estatus_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'estatus_comp_model.dart';
export 'estatus_comp_model.dart';

class EstatusCompWidget extends StatefulWidget {
  const EstatusCompWidget({
    super.key,
    required this.userDoc,
  });

  final UsersRecord? userDoc;

  @override
  State<EstatusCompWidget> createState() => _EstatusCompWidgetState();
}

class _EstatusCompWidgetState extends State<EstatusCompWidget> {
  late EstatusCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstatusCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.tareasOrdenadas = await queryAssignmentsRecordOnce(
        queryBuilder: (assignmentsRecord) =>
            assignmentsRecord.orderBy('order_estatus'),
      );
      _model.tareasOrdered = _model.tareasOrdenadas!
          .sortedList(keyOf: (e) => e.orderEstatus, desc: false)
          .toList()
          .cast<AssignmentsRecord>();
      safeSetState(() {});
      _model.tareasUsuario = await queryUserDoneRecordOnce(
        queryBuilder: (userDoneRecord) => userDoneRecord.where(
          'userID',
          isEqualTo: widget.userDoc?.uid,
        ),
      );
      _model.tasksUserDone =
          _model.tareasUsuario!.toList().cast<UserDoneRecord>();
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
          child: Container(
            width: double.infinity,
            height: 98.0,
            constraints: BoxConstraints(
              minHeight: 50.0,
            ),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: FaIcon(
                                      FontAwesomeIcons.medal,
                                      color: () {
                                        if (widget.userDoc?.category ==
                                            'Oro') {
                                          return Color(0xFFDAB31E);
                                        } else if (widget.userDoc?.category ==
                                            'Plata') {
                                          return Color(0xFFC0C0C0);
                                        } else if (widget.userDoc?.category ==
                                            'Bronce') {
                                          return Color(0xFF8E5029);
                                        } else if (widget.userDoc?.category ==
                                            'NIBSA') {
                                          return FlutterFlowTheme.of(context)
                                              .secondaryBackground;
                                        } else {
                                          return Color(0xFFE2E2E2);
                                        }
                                      }(),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: AutoSizeText(
                                        valueOrDefault<String>(
                                          widget.userDoc?.company,
                                          'conces',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Nissan Brand',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  TasksNIBSAConcesWidget.routeName,
                                  queryParameters: {
                                    'userDoc': serializeParam(
                                      widget.userDoc,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'userDoc': widget.userDoc,
                                  },
                                );
                              },
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 70.0,
                      constraints: BoxConstraints(
                        minHeight: 70.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 6.0, 0.0, 10.0),
                        child: StreamBuilder<List<AssignmentsRecord>>(
                          stream: queryAssignmentsRecord(
                            queryBuilder: (assignmentsRecord) =>
                                assignmentsRecord.orderBy('order_estatus'),
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
                            List<AssignmentsRecord>
                                listViewAssignmentsRecordList = snapshot.data!;

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewAssignmentsRecordList.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(width: 20.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewAssignmentsRecord =
                                    listViewAssignmentsRecordList[
                                        listViewIndex];
                                return Container(
                                  child: IconoEstatusWidget(
                                    key: Key(
                                        'Keyj13_${listViewIndex}_of_${listViewAssignmentsRecordList.length}'),
                                    userDone: _model.tasksUserDone
                                        .where((e) =>
                                            e.taskID ==
                                            listViewAssignmentsRecord.uid)
                                        .toList()
                                        .firstOrNull,
                                    task: listViewAssignmentsRecord,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
