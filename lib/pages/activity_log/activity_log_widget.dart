import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/varios/activity_log_list/activity_log_list_widget.dart';
import '/components/varios/date_picker/date_picker_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'activity_log_model.dart';
export 'activity_log_model.dart';

class ActivityLogWidget extends StatefulWidget {
  const ActivityLogWidget({super.key});

  static String routeName = 'activityLog';
  static String routePath = '/activityLog';

  @override
  State<ActivityLogWidget> createState() => _ActivityLogWidgetState();
}

class _ActivityLogWidgetState extends State<ActivityLogWidget> {
  late ActivityLogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityLogModel());

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
                    child: Container(
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 4.0),
                              child: Text(
                                'Actividad',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Nissan Brand',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if ((valueOrDefault(
                                                  currentUserDocument?.role,
                                                  '') ==
                                              'NIBSA') ||
                                          (valueOrDefault(
                                                  currentUserDocument?.role,
                                                  '') ==
                                              'Auditor') ||
                                          (valueOrDefault(
                                                  currentUserDocument?.role,
                                                  '') ==
                                              'ASPM'))
                                        AuthUserStreamWidget(
                                          builder: (context) =>
                                              FutureBuilder<List<UsersRecord>>(
                                            future: queryUsersRecordOnce(
                                              queryBuilder: (usersRecord) =>
                                                  usersRecord
                                                      .where(
                                                        'role',
                                                        isEqualTo:
                                                            'Concesionario',
                                                      )
                                                      .orderBy('company'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UsersRecord>
                                                  selectorUsersRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .selectorValueController ??=
                                                    FormFieldController<String>(
                                                  _model.selectorValue ??= '0',
                                                ),
                                                options: List<String>.from(
                                                    selectorUsersRecordList
                                                        .map((e) =>
                                                            e.reference.id)
                                                        .toList()),
                                                optionLabels:
                                                    selectorUsersRecordList
                                                        .map((e) => e.company)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .selectorValue = val);
                                                  _model.seleccionDropdown =
                                                      functions.getUserReference(
                                                          _model
                                                              .selectorValue!);
                                                  safeSetState(() {});
                                                },
                                                width: 300.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    'Selecciona Concesionario...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor: Color(0xFFF8F8F8),
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderWidth: 2.0,
                                                borderRadius: 0.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      if ((valueOrDefault(
                                                  currentUserDocument?.role,
                                                  '') ==
                                              'NIBSA') ||
                                          (valueOrDefault(
                                                  currentUserDocument?.role,
                                                  '') ==
                                              'Auditor') ||
                                          (valueOrDefault(
                                                  currentUserDocument?.role,
                                                  '') ==
                                              'ASPM'))
                                        AuthUserStreamWidget(
                                          builder: (context) =>
                                              FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: Icon(
                                              Icons.replay,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20.0,
                                            ),
                                            onPressed: () async {
                                              safeSetState(() {
                                                _model.selectorValueController
                                                    ?.value = '';
                                              });
                                              _model.seleccionDropdown = null;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.datePickerModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: DatePickerWidget(),
                                  ),
                                ),
                              ],
                            ),
                            if ((valueOrDefault(
                                        currentUserDocument?.role, '') ==
                                    'NIBSA') ||
                                (valueOrDefault(
                                        currentUserDocument?.role, '') ==
                                    'Auditor') ||
                                (valueOrDefault(
                                        currentUserDocument?.role, '') ==
                                    'ASPM'))
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      StreamBuilder<List<ActivityLogRecord>>(
                                    stream: queryActivityLogRecord(
                                      queryBuilder: (activityLogRecord) =>
                                          activityLogRecord
                                              .where(
                                                'userID',
                                                isEqualTo: _model
                                                    .seleccionDropdown?.id,
                                              )
                                              .where(
                                                'timestamp',
                                                isGreaterThanOrEqualTo: _model
                                                    .datePickerModel.dateInicio,
                                              )
                                              .where(
                                                'timestamp',
                                                isLessThanOrEqualTo: _model
                                                    .datePickerModel.dateFin,
                                              )
                                              .orderBy('timestamp',
                                                  descending: true),
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
                                      List<ActivityLogRecord>
                                          listViewActivityLogRecordList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewActivityLogRecordList
                                            .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewActivityLogRecord =
                                              listViewActivityLogRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: StreamBuilder<
                                                List<UsersRecord>>(
                                              stream: queryUsersRecord(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord.where(
                                                  'uid',
                                                  isEqualTo:
                                                      listViewActivityLogRecord
                                                          .userID,
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
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<UsersRecord>
                                                    activityLogListUsersRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final activityLogListUsersRecord =
                                                    activityLogListUsersRecordList
                                                            .isNotEmpty
                                                        ? activityLogListUsersRecordList
                                                            .first
                                                        : null;

                                                return ActivityLogListWidget(
                                                  key: Key(
                                                      'Key0op_${listViewIndex}_of_${listViewActivityLogRecordList.length}'),
                                                  activityLog:
                                                      listViewActivityLogRecord,
                                                  userCompany:
                                                      activityLogListUsersRecord
                                                          ?.company,
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            if (valueOrDefault(currentUserDocument?.role, '') ==
                                'Concesionario')
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) =>
                                      StreamBuilder<List<ActivityLogRecord>>(
                                    stream: queryActivityLogRecord(
                                      queryBuilder: (activityLogRecord) =>
                                          activityLogRecord
                                              .where(
                                                'userID',
                                                isEqualTo: currentUserUid,
                                              )
                                              .where(
                                                'timestamp',
                                                isGreaterThanOrEqualTo: _model
                                                    .datePickerModel.dateInicio,
                                              )
                                              .where(
                                                'timestamp',
                                                isLessThanOrEqualTo: _model
                                                    .datePickerModel.dateFin,
                                              )
                                              .orderBy('timestamp',
                                                  descending: true),
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
                                      List<ActivityLogRecord>
                                          listViewActivityLogRecordList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewActivityLogRecordList
                                            .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewActivityLogRecord =
                                              listViewActivityLogRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: StreamBuilder<
                                                List<UsersRecord>>(
                                              stream: queryUsersRecord(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord.where(
                                                  'uid',
                                                  isEqualTo:
                                                      listViewActivityLogRecord
                                                          .userID,
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
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<UsersRecord>
                                                    activityLogListUsersRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final activityLogListUsersRecord =
                                                    activityLogListUsersRecordList
                                                            .isNotEmpty
                                                        ? activityLogListUsersRecordList
                                                            .first
                                                        : null;

                                                return ActivityLogListWidget(
                                                  key: Key(
                                                      'Keyi7o_${listViewIndex}_of_${listViewActivityLogRecordList.length}'),
                                                  activityLog:
                                                      listViewActivityLogRecord,
                                                  userCompany:
                                                      activityLogListUsersRecord
                                                          ?.company,
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
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
