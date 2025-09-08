import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'detalles_tarea_n_i_b_s_a_model.dart';
export 'detalles_tarea_n_i_b_s_a_model.dart';

class DetallesTareaNIBSAWidget extends StatefulWidget {
  const DetallesTareaNIBSAWidget({
    super.key,
    this.taskDoc,
  });

  final AssignmentsRecord? taskDoc;

  static String routeName = 'detallesTareaNIBSA';
  static String routePath = '/detallesTareaNIBSA';

  @override
  State<DetallesTareaNIBSAWidget> createState() =>
      _DetallesTareaNIBSAWidgetState();
}

class _DetallesTareaNIBSAWidgetState extends State<DetallesTareaNIBSAWidget> {
  late DetallesTareaNIBSAModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetallesTareaNIBSAModel());

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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                                'Detalles Condición',
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
                                  16.0, 20.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          widget.taskDoc?.taskName,
                                          'task',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nissan Brand',
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: FaIcon(
                                                FontAwesomeIcons.medal,
                                                color: () {
                                                  if (widget.taskDoc
                                                          ?.taskCategory ==
                                                      'Oro') {
                                                    return Color(0xFFDAB31E);
                                                  } else if (widget.taskDoc
                                                          ?.taskCategory ==
                                                      'Plata') {
                                                    return Color(0xFFC0C0C0);
                                                  } else if (widget.taskDoc
                                                          ?.taskCategory ==
                                                      'Bronce') {
                                                    return Color(0xFF8E5029);
                                                  } else {
                                                    return Color(0xFFE2E2E2);
                                                  }
                                                }(),
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.taskDoc?.taskCategory,
                                                'cat',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Nissan Brand',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 40.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        widget.taskDoc?.taskDescription,
                                        'task desc',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nissan Brand',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (currentUserEmail == 'guille@mac.com')
                                        FFButtonWidget(
                                          onPressed: () async {
                                            _model.numConces =
                                                await queryUsersRecordOnce(
                                              queryBuilder: (usersRecord) =>
                                                  usersRecord.where(
                                                'role',
                                                isEqualTo: 'Concesionario',
                                              ),
                                            );
                                            _model.loopMax =
                                                _model.numConces?.length;
                                            safeSetState(() {});
                                            while (_model.loop! <
                                                _model.loopMax!) {
                                              await UserDoneRecord.collection
                                                  .doc()
                                                  .set({
                                                ...createUserDoneRecordData(
                                                  userID: _model.numConces
                                                      ?.elementAtOrNull(
                                                          _model.loop!)
                                                      ?.uid,
                                                  taskDone: false,
                                                  auditor: _model.numConces
                                                      ?.elementAtOrNull(
                                                          _model.loop!)
                                                      ?.auditor,
                                                  taskID: widget.taskDoc?.uid,
                                                  userRef: _model.numConces
                                                      ?.elementAtOrNull(
                                                          _model.loop!)
                                                      ?.reference,
                                                  taskRef: widget
                                                      .taskDoc?.reference,
                                                  auditResult: 'Pendiente',
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'modificationDate':
                                                        FieldValue
                                                            .serverTimestamp(),
                                                  },
                                                ),
                                              });
                                              _model.loop = _model.loop! + 1;
                                            }
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return WebViewAware(
                                                  child: AlertDialog(
                                                    title: Text(
                                                        'Tarea añadida a todos los concesionarios correctamente'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );

                                            safeSetState(() {});
                                          },
                                          text: 'Asignar tarea a todos',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          'Nissan Brand',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      if (valueOrDefault(
                                              currentUserDocument?.role, '') !=
                                          'Concesionario')
                                        AuthUserStreamWidget(
                                          builder: (context) => FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                EditTaskWidget.routeName,
                                                queryParameters: {
                                                  'taskDocument':
                                                      serializeParam(
                                                    widget.taskDoc,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'taskDocument':
                                                      widget.taskDoc,
                                                },
                                              );
                                            },
                                            text: 'Editar',
                                            icon: Icon(
                                              Icons.edit,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Nissan Brand',
                                                        color: Colors.white,
                                                        letterSpacing: 2.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
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
