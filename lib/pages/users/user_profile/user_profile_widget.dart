import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({
    super.key,
    required this.userDoc,
    this.auditorDocRef,
    this.aspmDocRef,
  });

  final DocumentReference? userDoc;
  final DocumentReference? auditorDocRef;
  final DocumentReference? aspmDocRef;

  static String routeName = 'userProfile';
  static String routePath = '/userProfile';

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.nivelInicio = _model.nivelValue;
      safeSetState(() {});
    });

    _model.companyFocusNode1 ??= FocusNode();

    _model.companyFocusNode2 ??= FocusNode();

    _model.nameFocusNode ??= FocusNode();

    _model.emailFocusNode ??= FocusNode();

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
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: StreamBuilder<UsersRecord>(
              stream: UsersRecord.getDocument(widget.userDoc!),
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

                final userDocUsersRecord = snapshot.data!;

                return Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            maxWidth: 800.0,
                          ),
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    'Perfil de ${userDocUsersRecord.company}',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Nissan Brand',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Tipo de Usuario',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Nissan Brand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 229.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            border: Border.all(
                                              color: Color(0xFFF8F8F8),
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController1 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue1 ??=
                                                        userDocUsersRecord.role,
                                                  ),
                                                  options: [
                                                    'Concesionario',
                                                    'Auditor',
                                                    'ASPM',
                                                    'NIBSA'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownValue1 =
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
                                                            letterSpacing: 0.0,
                                                          ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 0.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 0.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (_model.dropDownValue1 ==
                                            'Concesionario')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 0.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController2 ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: ['A', 'B', 'C', 'D'],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.dropDownValue2 =
                                                      val),
                                              width: 150.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Nissan Brand',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Grupo',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 0.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 0.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                      ],
                                    ),
                                    if (_model.dropDownValue1 ==
                                        'Concesionario')
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 10.0),
                                            child: Text(
                                              'Código de Concesionario',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Nissan Brand',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: TextFormField(
                                                  controller: _model
                                                          .companyTextController1 ??=
                                                      TextEditingController(
                                                    text:
                                                        valueOrDefault<String>(
                                                      userDocUsersRecord
                                                          .dealerCode,
                                                      'Código del Concesionario',
                                                    ),
                                                  ),
                                                  focusNode:
                                                      _model.companyFocusNode1,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
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
                                                              0.0),
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
                                                              0.0),
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
                                                              0.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Nissan Brand',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  validator: _model
                                                      .companyTextController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 10.0),
                                          child: Text(
                                            'Nivel',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Nissan Brand',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 229.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                border: Border.all(
                                                  color: Color(0xFFF8F8F8),
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
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
                                                            if (userDocUsersRecord
                                                                    .category ==
                                                                'Oro') {
                                                              return Color(
                                                                  0xFFDAB31E);
                                                            } else if (userDocUsersRecord
                                                                    .category ==
                                                                'Plata') {
                                                              return Color(
                                                                  0xFFC0C0C0);
                                                            } else if (userDocUsersRecord
                                                                    .category ==
                                                                'Bronce') {
                                                              return Color(
                                                                  0xFF8E5029);
                                                            } else {
                                                              return FlutterFlowTheme
                                                                      .of(context)
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
                                                                  .nivelValueController ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.nivelValue ??=
                                                                valueOrDefault<
                                                                    String>(
                                                              userDocUsersRecord
                                                                  .category,
                                                              'Selecciona...',
                                                            ),
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
                                                                  _model.nivelValue =
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                                          hidesUnderline: true,
                                                          isOverButton: true,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Concesionario',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Nissan Brand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: _model
                                                    .companyTextController2 ??=
                                                TextEditingController(
                                              text: valueOrDefault<String>(
                                                userDocUsersRecord.company,
                                                'Nombre del Concesionario',
                                              ),
                                            ),
                                            focusNode: _model.companyFocusNode2,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nissan Brand',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Nissan Brand',
                                                  letterSpacing: 0.0,
                                                ),
                                            validator: _model
                                                .companyTextController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Nombre',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Nissan Brand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller:
                                                _model.nameTextController ??=
                                                    TextEditingController(
                                              text: valueOrDefault<String>(
                                                userDocUsersRecord.displayName,
                                                'Nombre del Usuario',
                                              ),
                                            ),
                                            focusNode: _model.nameFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nissan Brand',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Nissan Brand',
                                                  letterSpacing: 0.0,
                                                ),
                                            validator: _model
                                                .nameTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 10.0),
                                      child: Text(
                                        'Email',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Nissan Brand',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller:
                                                _model.emailTextController ??=
                                                    TextEditingController(
                                              text: valueOrDefault<String>(
                                                userDocUsersRecord.email,
                                                'Email del Usuario',
                                              ),
                                            ),
                                            focusNode: _model.emailFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nissan Brand',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Nissan Brand',
                                                  letterSpacing: 0.0,
                                                ),
                                            validator: _model
                                                .emailTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                if (userDocUsersRecord.role == 'Concesionario')
                                  StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        widget.auditorDocRef!),
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

                                      final auditorUsersRecord = snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 10.0),
                                            child: Text(
                                              'Consultor',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Nissan Brand',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
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
                                                      listaAuditoresUsersRecordList =
                                                      snapshot.data!;

                                                  return Container(
                                                    width: 477.0,
                                                    height: 65.0,
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
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Padding(
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
                                                                          .newAuditorValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model.newAuditorValue ??=
                                                                        '',
                                                                  ),
                                                                  options: List<
                                                                          String>.from(
                                                                      listaAuditoresUsersRecordList
                                                                          .map((e) =>
                                                                              e.uid)
                                                                          .toList()),
                                                                  optionLabels: listaAuditoresUsersRecordList
                                                                      .map((e) =>
                                                                          e.displayName)
                                                                      .toList(),
                                                                  onChanged:
                                                                      (val) async {
                                                                    safeSetState(() =>
                                                                        _model.newAuditorValue =
                                                                            val);
                                                                    _model.newAuditorDocRef =
                                                                        await actions
                                                                            .getDocRefFromID(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        _model
                                                                            .newAuditorValue,
                                                                        'Auditor',
                                                                      ),
                                                                    );

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  width: 450.0,
                                                                  height: 60.0,
                                                                  textStyle: FlutterFlowTheme.of(
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
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderWidth:
                                                                      0.0,
                                                                  borderRadius:
                                                                      0.0,
                                                                  margin: EdgeInsetsDirectional
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
                                                                  labelText:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    auditorUsersRecord
                                                                        .displayName,
                                                                    'No definido',
                                                                  ),
                                                                  labelTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nissan Brand',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                if (userDocUsersRecord.role == 'Concesionario')
                                  StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        widget.aspmDocRef!),
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

                                      final aspmUsersRecord = snapshot.data!;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 10.0),
                                            child: Text(
                                              'ASPM',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Nissan Brand',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              StreamBuilder<List<UsersRecord>>(
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
                                                      listaAspmsUsersRecordList =
                                                      snapshot.data!;

                                                  return Container(
                                                    width: 477.0,
                                                    height: 65.0,
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
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Padding(
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
                                                                          .dropdownASPMValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model.dropdownASPMValue ??=
                                                                        '',
                                                                  ),
                                                                  options: List<
                                                                          String>.from(
                                                                      listaAspmsUsersRecordList
                                                                          .map((e) =>
                                                                              e.uid)
                                                                          .toList()),
                                                                  optionLabels: listaAspmsUsersRecordList
                                                                      .map((e) =>
                                                                          e.displayName)
                                                                      .toList(),
                                                                  onChanged:
                                                                      (val) async {
                                                                    safeSetState(() =>
                                                                        _model.dropdownASPMValue =
                                                                            val);
                                                                    _model.newASPMDocRef2 =
                                                                        await actions
                                                                            .getDocRefFromID(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        _model
                                                                            .dropdownASPMValue,
                                                                        'Auditor',
                                                                      ),
                                                                    );

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  width: 450.0,
                                                                  height: 60.0,
                                                                  textStyle: FlutterFlowTheme.of(
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
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderWidth:
                                                                      0.0,
                                                                  borderRadius:
                                                                      0.0,
                                                                  margin: EdgeInsetsDirectional
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
                                                                  labelText:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    aspmUsersRecord
                                                                        .displayName,
                                                                    'ASPM',
                                                                  ),
                                                                  labelTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nissan Brand',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.nivelFinal = _model.nivelValue;
                                      safeSetState(() {});

                                      await userDocUsersRecord.reference
                                          .update(createUsersRecordData(
                                        email: _model.emailTextController.text,
                                        displayName:
                                            _model.nameTextController.text,
                                        company:
                                            _model.companyTextController2.text,
                                        auditor: _model.newAuditorDocRef,
                                        aspm: _model.newASPMDocRef2,
                                        role: _model.dropDownValue1,
                                        category: _model.nivelValue,
                                        group: _model.dropDownValue2,
                                        dealerCode:
                                            _model.companyTextController1.text,
                                      ));

                                      context.pushNamed(
                                          UserManagementWidget.routeName);
                                    },
                                    text: 'Actualizar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Nissan Brand',
                                            color: Colors.white,
                                            letterSpacing: 2.0,
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
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
