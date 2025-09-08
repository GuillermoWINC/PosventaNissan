import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/listados_tareas/task_auditor/task_auditor_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'tasks_auditor_model.dart';
export 'tasks_auditor_model.dart';

class TasksAuditorWidget extends StatefulWidget {
  const TasksAuditorWidget({super.key});

  static String routeName = 'tasksAuditor';
  static String routePath = '/tasksAuditor';

  @override
  State<TasksAuditorWidget> createState() => _TasksAuditorWidgetState();
}

class _TasksAuditorWidgetState extends State<TasksAuditorWidget> {
  late TasksAuditorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TasksAuditorModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await queryUserDoneRecordOnce(
        queryBuilder: (userDoneRecord) => userDoneRecord
            .where(
              'auditor',
              isEqualTo: currentUserReference,
            )
            .orderBy('userID'),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: WebViewAware(
            child: wrapWithModel(
              model: _model.sideNavModel,
              updateCallback: () => safeSetState(() {}),
              child: SideNavWidget(),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Text(
            'Venta Exterior Nissan',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nissan Brand',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(
                        queryBuilder: (usersRecord) => usersRecord.where(
                          'auditor',
                          isEqualTo: currentUserReference,
                        ),
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
                        List<UsersRecord> concesionariUsersRecordList =
                            snapshot.data!;

                        return Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            maxWidth: 970.0,
                          ),
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Container(
                                    width: double.infinity,
                                    height: 24.0,
                                    decoration: BoxDecoration(),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 12.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: 12.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    icon: Icon(
                                      Icons.arrow_back_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 4.0),
                                  child: Text(
                                    'Tareas',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Nissan Brand',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 20.0),
                                  child: Text(
                                    'Estado del cumplimiento de condiciones de todos tus concesionarios',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Nissan Brand',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 10.0),
                                  child: FlutterFlowChoiceChips(
                                    options: [
                                      ChipData(
                                          'Enviada', Icons.circle_outlined),
                                      ChipData('Aprobada',
                                          Icons.check_circle_outline_rounded),
                                      ChipData('Rechazada',
                                          Icons.remove_circle_outline_rounded),
                                      ChipData('Pendiente', Icons.circle_sharp)
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.choiceChipsValue =
                                            val?.firstOrNull),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nissan Brand',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      iconSize: 18.0,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              2.0, 0.0, 2.0, 0.0),
                                      elevation: 4.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nissan Brand',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      iconSize: 18.0,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              2.0, 0.0, 2.0, 0.0),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    chipSpacing: 10.0,
                                    rowSpacing: 12.0,
                                    multiselect: false,
                                    initialized:
                                        _model.choiceChipsValue != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                      ['Enviada'],
                                    ),
                                    wrapped: true,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: StreamBuilder<List<UserDoneRecord>>(
                                    stream: queryUserDoneRecord(
                                      queryBuilder: (userDoneRecord) =>
                                          userDoneRecord
                                              .where(
                                                'auditor',
                                                isEqualTo: currentUserReference,
                                              )
                                              .where(
                                                'auditResult',
                                                isEqualTo: _model
                                                            .choiceChipsValue !=
                                                        ''
                                                    ? _model.choiceChipsValue
                                                    : null,
                                              )
                                              .whereIn(
                                                  'userRef',
                                                  concesionariUsersRecordList
                                                      .map((e) => e.reference)
                                                      .toList()),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<UserDoneRecord>
                                          listViewUserDoneRecordList =
                                          snapshot.data!;

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewUserDoneRecordList.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 20.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewUserDoneRecord =
                                              listViewUserDoneRecordList[
                                                  listViewIndex];
                                          return TaskAuditorWidget(
                                            key: Key(
                                                'Key69c_${listViewIndex}_of_${listViewUserDoneRecordList.length}'),
                                            taskDocRef:
                                                listViewUserDoneRecord.taskRef!,
                                            taskDoneDocument:
                                                listViewUserDoneRecord,
                                            userDocRef:
                                                listViewUserDoneRecord.userRef!,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
