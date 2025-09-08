import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'auth_create_user_admin_login_model.dart';
export 'auth_create_user_admin_login_model.dart';

class AuthCreateUserAdminLoginWidget extends StatefulWidget {
  const AuthCreateUserAdminLoginWidget({super.key});

  static String routeName = 'auth_CreateUserAdminLogin';
  static String routePath = '/authCreateUserAdminLogin';

  @override
  State<AuthCreateUserAdminLoginWidget> createState() =>
      _AuthCreateUserAdminLoginWidgetState();
}

class _AuthCreateUserAdminLoginWidgetState
    extends State<AuthCreateUserAdminLoginWidget>
    with TickerProviderStateMixin {
  late AuthCreateUserAdminLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthCreateUserAdminLoginModel());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.passwordConfirmTextController ??= TextEditingController();
    _model.passwordConfirmFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0, 0.524),
            end: Offset(0, 0),
          ),
        ],
      ),
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
    return StreamBuilder<List<AssignmentsRecord>>(
      stream: queryAssignmentsRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).secondary,
                  ),
                ),
              ),
            ),
          );
        }
        List<AssignmentsRecord> authCreateUserAdminLoginAssignmentsRecordList =
            snapshot.data!;

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
                  Icons.home,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed(HomeWidget.routeName);
                },
              ),
              title: Text(
                'Venta Exterior Nissan',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nissan Brand',
                      color: Colors.white,
                      fontSize: 22.0,
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
                children: [
                  Expanded(
                    flex: 5,
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 570.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 20.0, 16.0, 32.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 12.0),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: 12.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: Icon(
                                                Icons.arrow_back_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                context.safePop();
                                              },
                                            ),
                                          ),
                                          Text(
                                            'Crea una cuenta',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Nissan Brand',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Tipo de Usuario',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 229.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFF8F8F8),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .roleDropdownValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.roleDropdownValue ??=
                                                                    'Concesionario',
                                                              ),
                                                              options: [
                                                                'Concesionario',
                                                                'Auditor',
                                                                'ASPM',
                                                                'NIBSA'
                                                              ],
                                                              onChanged: (val) =>
                                                                  safeSetState(() =>
                                                                      _model.roleDropdownValue =
                                                                          val),
                                                              width: 150.0,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nissan Brand',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              elevation: 0.0,
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderWidth: 0.0,
                                                              borderRadius: 0.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isOverButton:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Nivel',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 229.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFF8F8F8),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .medal,
                                                              color: () {
                                                                if (_model
                                                                        .categoryDropdownValue ==
                                                                    'Oro') {
                                                                  return Color(
                                                                      0xFFDAB31E);
                                                                } else if (_model
                                                                        .categoryDropdownValue ==
                                                                    'Plata') {
                                                                  return Color(
                                                                      0xFFC0C0C0);
                                                                } else if (_model
                                                                        .categoryDropdownValue ==
                                                                    'Bronce') {
                                                                  return Color(
                                                                      0xFF8E5029);
                                                                } else {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                                }
                                                              }(),
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .categoryDropdownValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.categoryDropdownValue ??=
                                                                    'Sin nivel',
                                                              ),
                                                              options: [
                                                                'Oro',
                                                                'Plata',
                                                                'Bronce',
                                                                'Sin nivel',
                                                                'NIBSA'
                                                              ],
                                                              onChanged: (val) =>
                                                                  safeSetState(() =>
                                                                      _model.categoryDropdownValue =
                                                                          val),
                                                              width: 130.0,
                                                              height: 50.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nissan Brand',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              elevation: 0.0,
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderWidth: 0.0,
                                                              borderRadius: 0.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isOverButton:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (_model.roleDropdownValue ==
                                              'Concesionario')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 20.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .companySelectorValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  'A6 IBERAUTO, S.L.',
                                                  'ACENA MOTOR, S.L.',
                                                  'AG PARAYAS, S.L.',
                                                  'ANDALMOTOR AUTOMOCIÓN, S.L.',
                                                  'ANDALMOTOR AUTOMOCIÓN, S.L. (HUELVA)',
                                                  'ANFERPA CARS, S.L.U.',
                                                  'ARAGONESA DE VEHICULOS, S.A. (ARVESA)',
                                                  'ARIMOTOR TENERIFE, S.L.',
                                                  'AURASSAN AUTOMÓVILES, S.L.U.',
                                                  'AUTOMOTOR Y VENTAS, S.L.',
                                                  'AUTOMÓVILES ANTAMOTOR, S.L.',
                                                  'AUTOS NIGORRA, S.L.U.',
                                                  'AUTOSAE CENTER, S.L.U.',
                                                  'BLENDIO KALAUTO, S.L.U.',
                                                  'BLENDIO KALAUTO, S.L.U. (LOGROÑO)',
                                                  'BRISA MOTOR, S.L.U.',
                                                  'C. AUTOM. Y MAQ. AGRIC., S.A. (CAYMA)',
                                                  'CAETANO REICOMSA, S.L.U.',
                                                  'CAMPS MOTOR, S.A.',
                                                  'CATAC, S.A.',
                                                  'COMERCIAL ARRE MOTOR, S.A.',
                                                  'COMERCIO Y ASISTENCIA, S.A. (CYASA)',
                                                  'CONCESOL AUTOMOCION, S.L.U.',
                                                  'DISTRIBUCIÓN Y VENTAS, S.L. (DIVENSA)',
                                                  'DIVESAN SEVILLA, S.L.U.',
                                                  'ENCIMAUTO, S.A.L.',
                                                  'EYLO MOTOR, S.L.',
                                                  'FERGIL AUTO, S.L.U.',
                                                  'FONSA MOTOR, S.A.',
                                                  'FRANCISCO MARCOS, S.A. (VALENCIA)',
                                                  'FRANCISCO MARCOS, S.A.',
                                                  'FRANCISCO MARCOS, S.A. (SOVISA)',
                                                  'GAMBOA AUTOMOCIÓN, S.A.',
                                                  'GAURSA ARABAUTO, S.L.U.',
                                                  'GRANADA SERV. MOV.Y AUTOMOCION, S.A.',
                                                  'HERMANOS GELIDA, S.A.',
                                                  'IBERMOTOR DE SANTIAGO, S.L.',
                                                  'ILERDAUTO, S.A.',
                                                  'INTERDIESEL, S.A.',
                                                  'KENTO MOTOR, S.L.',
                                                  'LEOMOTOR, S.L.',
                                                  'LORETO MOTOR, S.L.U.',
                                                  'MACHER MOTOR, S.L.',
                                                  'MOTOR LLANSÀ, S.L.',
                                                  'NIKKO CENTER MOTORS, S.L.',
                                                  'NIPÓN MOTOR, S.A.',
                                                  'OLOT MOTOR, S.L.',
                                                  'RAFAEL ALMENAR, S.A.',
                                                  'RAFAEL ALMENAR, S.A. (GANDIA)',
                                                  'RIMAUTO TERUEL CAR, S.L.U.',
                                                  'ROFERVIGO, S.L.',
                                                  'ROMAUTO GRUP CONCESSIONARIS, S.L.',
                                                  'ROMÓVIL, S.A.',
                                                  'ROVIRA MOTOR, S.A.',
                                                  'SAFAMOTOR AUTOS, S.L.',
                                                  'SANFELIU MOTORS, S.L.',
                                                  'SERVIAUTO MAR MENOR, S.L.',
                                                  'TALAUTO CARS, S.L.',
                                                  'TALLERES SANTI ENRIQUE, S.A.',
                                                  'TALLERES Y RECAMBIOS MORERA, S.A.',
                                                  'TRIMADRID, S.L.',
                                                  'UNSAIN MOTOR, S.L.U.',
                                                  'VICAUTO, S.A.U.'
                                                ],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .companySelectorValue =
                                                        val),
                                                width: 592.0,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Concesionario...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                    _model.nameTextController,
                                                focusNode: _model.nameFocusNode,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Nombre Completo',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nissan Brand',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                validator: _model
                                                    .nameTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .emailAddressTextController,
                                                focusNode: _model
                                                    .emailAddressFocusNode,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Email',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nissan Brand',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                validator: _model
                                                    .emailAddressTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .passwordTextController,
                                                focusNode:
                                                    _model.passwordFocusNode,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.password
                                                ],
                                                obscureText:
                                                    !_model.passwordVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Contraseña',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nissan Brand',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  suffixIcon: InkWell(
                                                    onTap: () => safeSetState(
                                                      () => _model
                                                              .passwordVisibility =
                                                          !_model
                                                              .passwordVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                validator: _model
                                                    .passwordTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                    .passwordConfirmTextController,
                                                focusNode: _model
                                                    .passwordConfirmFocusNode,
                                                autofocus: true,
                                                autofillHints: [
                                                  AutofillHints.password
                                                ],
                                                obscureText: !_model
                                                    .passwordConfirmVisibility,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Confirma Contraseña',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nissan Brand',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  suffixIcon: InkWell(
                                                    onTap: () => safeSetState(
                                                      () => _model
                                                              .passwordConfirmVisibility =
                                                          !_model
                                                              .passwordConfirmVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordConfirmVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                minLines: 1,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                validator: _model
                                                    .passwordConfirmTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          if (_model.roleDropdownValue ==
                                              'Concesionario')
                                            StreamBuilder<List<UsersRecord>>(
                                              stream: queryUsersRecord(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord.where(
                                                  'role',
                                                  isEqualTo: 'Auditor',
                                                ),
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
                                                    auditorUsersRecordList =
                                                    snapshot.data!;

                                                return Container(
                                                  width: 572.0,
                                                  height: 56.0,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xFFF8F8F8),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropdownAuditorValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropdownAuditorValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        auditorUsersRecordList
                                                            .map((e) =>
                                                                valueOrDefault<
                                                                    String>(
                                                                  e.uid,
                                                                  'Auditor',
                                                                ))
                                                            .toList()),
                                                    optionLabels:
                                                        auditorUsersRecordList
                                                            .map((e) =>
                                                                valueOrDefault<
                                                                    String>(
                                                                  e.displayName,
                                                                  'Nombre',
                                                                ))
                                                            .toList(),
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                              .dropdownAuditorValue =
                                                          val);
                                                      _model.newAuditorDocRef =
                                                          await actions
                                                              .getDocRefFromID(
                                                        valueOrDefault<String>(
                                                          _model
                                                              .dropdownAuditorValue,
                                                          'Auditor',
                                                        ),
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                    width: 450.0,
                                                    height: 45.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: '   Auditor...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 0.0,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0.0,
                                                    borderRadius: 0.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                    labelText: '',
                                                    labelTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Nissan Brand',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                                );
                                              },
                                            ),
                                          if (_model.roleDropdownValue ==
                                              'Concesionario')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 20.0),
                                              child: StreamBuilder<
                                                  List<UsersRecord>>(
                                                stream: queryUsersRecord(
                                                  queryBuilder: (usersRecord) =>
                                                      usersRecord.where(
                                                    'role',
                                                    isEqualTo: 'ASPM',
                                                  ),
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
                                                      aspmUsersRecordList =
                                                      snapshot.data!;

                                                  return Container(
                                                    width: 572.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFF8F8F8),
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropDownASPMValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropDownASPMValue ??=
                                                            '',
                                                      ),
                                                      options: List<
                                                              String>.from(
                                                          aspmUsersRecordList
                                                              .map((e) =>
                                                                  valueOrDefault<
                                                                      String>(
                                                                    e.uid,
                                                                    'ASPM',
                                                                  ))
                                                              .toList()),
                                                      optionLabels:
                                                          aspmUsersRecordList
                                                              .map((e) =>
                                                                  valueOrDefault<
                                                                      String>(
                                                                    e.displayName,
                                                                    'Nombre',
                                                                  ))
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropDownASPMValue =
                                                            val);
                                                        _model.newASPMDocRef =
                                                            await actions
                                                                .getDocRefFromID(
                                                          valueOrDefault<
                                                              String>(
                                                            _model
                                                                .dropDownASPMValue,
                                                            'ASPM',
                                                          ),
                                                        );

                                                        safeSetState(() {});
                                                      },
                                                      width: 450.0,
                                                      height: 0.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: '   ASPM...',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 0.0,
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderWidth: 0.0,
                                                      borderRadius: 0.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText: '',
                                                      labelTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, -1.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                try {
                                                  final result =
                                                      await FirebaseFunctions
                                                              .instanceFor(
                                                                  region:
                                                                      'europe-central2')
                                                          .httpsCallable(
                                                              'createUser2')
                                                          .call({
                                                    "emailAddress": _model
                                                        .emailAddressTextController
                                                        .text,
                                                    "password": _model
                                                        .passwordTextController
                                                        .text,
                                                  });
                                                  _model.newUser2 =
                                                      CreateUser2CloudFunctionCallResponse(
                                                    data: result.data,
                                                    succeeded: true,
                                                    resultAsString:
                                                        result.data.toString(),
                                                    jsonBody: result.data,
                                                  );
                                                } on FirebaseFunctionsException catch (error) {
                                                  _model.newUser2 =
                                                      CreateUser2CloudFunctionCallResponse(
                                                    errorCode: error.code,
                                                    succeeded: false,
                                                  );
                                                }

                                                if (_model
                                                    .newUser2!.succeeded!) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title: Text(
                                                              'Usuario creado correctamente'),
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
                                                  _model.userID2 =
                                                      await queryUsersRecordOnce(
                                                    queryBuilder:
                                                        (usersRecord) =>
                                                            usersRecord
                                                                .where(
                                                                  'email',
                                                                  isEqualTo: _model
                                                                      .emailAddressTextController
                                                                      .text,
                                                                )
                                                                .where(
                                                                  'role',
                                                                  isEqualTo:
                                                                      'Concesionario',
                                                                ),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);
                                                  if (_model.userID2?.uid !=
                                                          null &&
                                                      _model.userID2?.uid !=
                                                          '') {
                                                    await _model
                                                        .userID2!.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'created_time': FieldValue
                                                              .serverTimestamp(),
                                                        },
                                                      ),
                                                    });
                                                    _model.newUserID =
                                                        _model.userID2?.uid;
                                                    safeSetState(() {});
                                                    while (_model.loop <
                                                        valueOrDefault<int>(
                                                          authCreateUserAdminLoginAssignmentsRecordList
                                                              .length,
                                                          0,
                                                        )) {
                                                      await UserDoneRecord
                                                          .collection
                                                          .doc()
                                                          .set({
                                                        ...createUserDoneRecordData(
                                                          userID:
                                                              _model.newUserID,
                                                          taskDone: false,
                                                          auditor: _model
                                                              .userID2?.auditor,
                                                          taskID:
                                                              valueOrDefault<
                                                                  String>(
                                                            authCreateUserAdminLoginAssignmentsRecordList
                                                                .elementAtOrNull(
                                                                    _model.loop)
                                                                ?.uid,
                                                            '0',
                                                          ),
                                                          userRef: _model
                                                              .userID2
                                                              ?.reference,
                                                          taskRef:
                                                              authCreateUserAdminLoginAssignmentsRecordList
                                                                  .elementAtOrNull(
                                                                      _model
                                                                          .loop)
                                                                  ?.reference,
                                                          auditResult:
                                                              'Pendiente',
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'modificationDate':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      _model.loop =
                                                          _model.loop + 1;
                                                    }
                                                  }

                                                  context.pushNamed(
                                                      UserManagementWidget
                                                          .routeName);
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                        child: AlertDialog(
                                                          title: Text('Error'),
                                                          content: Text(_model
                                                              .newUser2!
                                                              .errorCode!),
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
                                                }

                                                safeSetState(() {});
                                              },
                                              text: 'Crear Cuenta',
                                              options: FFButtonOptions(
                                                width: 200.0,
                                                height: 44.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
