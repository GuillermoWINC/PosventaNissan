import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'incentivos_v_e_model.dart';
export 'incentivos_v_e_model.dart';

class IncentivosVEWidget extends StatefulWidget {
  const IncentivosVEWidget({super.key});

  static String routeName = 'incentivosVE';
  static String routePath = '/incentivosVE';

  @override
  State<IncentivosVEWidget> createState() => _IncentivosVEWidgetState();
}

class _IncentivosVEWidgetState extends State<IncentivosVEWidget> {
  late IncentivosVEModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncentivosVEModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        queryBuilder: (usersRecord) => usersRecord
            .where(
              'role',
              isEqualTo: 'ASPM',
            )
            .orderBy('display_name'),
      ),
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
        List<UsersRecord> incentivosVEUsersRecordList = snapshot.data!;

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
                            queryBuilder: (usersRecord) => usersRecord
                                .where(
                                  'role',
                                  isEqualTo: 'Concesionario',
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
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).secondary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<UsersRecord> mainTeamContentUsersRecordList =
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 4.0),
                                      child: Text(
                                        'Incentivos Venta Exterior',
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Filtros',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nissan Brand',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
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
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      mainTeamContentUsersRecordList
                                                          .map((e) =>
                                                              e.reference.id)
                                                          .toList()),
                                                  optionLabels:
                                                      mainTeamContentUsersRecordList
                                                          .map((e) => e.company)
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                        .dropDownValue1 = val);
                                                    _model.selectedDealerRef =
                                                        _model.dropDownValue1;
                                                    safeSetState(() {});
                                                  },
                                                  width: 357.3,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nissan Brand',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText:
                                                      'Todos los Concesionarios',
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
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController2 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    'Q1 2025',
                                                    'Q2 2025',
                                                    'Q3 2025',
                                                    'Q4 2025',
                                                    'Q1 2026',
                                                    'Q2 2026',
                                                    'Q3 2026',
                                                    'Q4 2026'
                                                  ],
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                        .dropDownValue2 = val);
                                                    _model.selectedPeriodoQ =
                                                        _model.dropDownValue2;
                                                    safeSetState(() {});
                                                  },
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nissan Brand',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText:
                                                      'Todos los Periodos',
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
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController3 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue3 ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from(
                                                      incentivosVEUsersRecordList
                                                          .map((e) =>
                                                              e.reference.id)
                                                          .toList()),
                                                  optionLabels:
                                                      incentivosVEUsersRecordList
                                                          .map((e) =>
                                                              e.displayName)
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                        .dropDownValue3 = val);
                                                    _model.selectedAspmRef =
                                                        _model.dropDownValue3;
                                                    safeSetState(() {});
                                                  },
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Nissan Brand',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Todos los ASPM',
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
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                              if ((valueOrDefault(
                                                          currentUserDocument
                                                              ?.role,
                                                          '') ==
                                                      'NIBSA') ||
                                                  (valueOrDefault(
                                                          currentUserDocument
                                                              ?.role,
                                                          '') ==
                                                      'Auditor') ||
                                                  (valueOrDefault(
                                                          currentUserDocument
                                                              ?.role,
                                                          '') ==
                                                      'ASPM'))
                                                AuthUserStreamWidget(
                                                  builder: (context) =>
                                                      FlutterFlowIconButton(
                                                    borderRadius: 8.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    icon: Icon(
                                                      Icons.replay,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 20.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                        IncentivosVEWidget
                                                            .routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: StreamBuilder<List<BonoVeRecord>>(
                                        stream: queryBonoVeRecord(),
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
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<BonoVeRecord>
                                              containerBonoVeRecordList =
                                              snapshot.data!;

                                          return Container(
                                            height: 200.0,
                                            child: Builder(
                                              builder: (context) {
                                                final listaBonoVE =
                                                    containerBonoVeRecordList
                                                        .map((e) => e)
                                                        .toList();

                                                return FlutterFlowDataTable<
                                                    BonoVeRecord>(
                                                  controller: _model
                                                      .paginatedDataTableController,
                                                  data: listaBonoVE,
                                                  columnsBuilder:
                                                      (onSortChanged) => [
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Concesionario',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      fixedWidth:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.2,
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Objetivo',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Venta PNC Obj',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Venta PNC Com',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Periodo',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      fixedWidth:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.07,
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'ASPM',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Nissan Brand',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      fixedWidth:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.1,
                                                    ),
                                                  ],
                                                  dataRowBuilder:
                                                      (listaBonoVEItem,
                                                              listaBonoVEIndex,
                                                              selected,
                                                              onSelectChanged) =>
                                                          DataRow(
                                                    color: WidgetStateProperty
                                                        .all(
                                                      listaBonoVEIndex % 2 == 0
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                    ),
                                                    cells: [
                                                      StreamBuilder<
                                                          UsersRecord>(
                                                        stream: UsersRecord
                                                            .getDocument(
                                                                listaBonoVEItem
                                                                    .dealerRef!),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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

                                                          final textUsersRecord =
                                                              snapshot.data!;

                                                          return Text(
                                                            textUsersRecord
                                                                .company,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nissan Brand',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          formatNumber(
                                                            listaBonoVEItem
                                                                .objetivo,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: '#,##0 €',
                                                            locale: 'es_ES',
                                                          ),
                                                          'obj',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nissan Brand',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          formatNumber(
                                                            listaBonoVEItem
                                                                .ventaPncObj,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: '#,##0 €',
                                                            locale: 'es_ES',
                                                          ),
                                                          'vtaobj',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nissan Brand',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          formatNumber(
                                                            listaBonoVEItem
                                                                .ventaPncCompetitivo,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: '#,##0 €',
                                                            locale: 'es_ES',
                                                          ),
                                                          'vtacom',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nissan Brand',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        listaBonoVEItem
                                                            .periodoQ,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nissan Brand',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      StreamBuilder<
                                                          UsersRecord>(
                                                        stream: UsersRecord
                                                            .getDocument(
                                                                listaBonoVEItem
                                                                    .aspmRef!),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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

                                                          final textUsersRecord =
                                                              snapshot.data!;

                                                          return Text(
                                                            textUsersRecord
                                                                .displayName,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nissan Brand',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                    ]
                                                        .map((c) => DataCell(c))
                                                        .toList(),
                                                  ),
                                                  paginated: false,
                                                  selectable: false,
                                                  headingRowHeight: 56.0,
                                                  dataRowHeight: 48.0,
                                                  columnSpacing: 20.0,
                                                  headingRowColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  addHorizontalDivider: true,
                                                  addTopAndBottomDivider: false,
                                                  hideDefaultHorizontalDivider:
                                                      true,
                                                  horizontalDividerColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  horizontalDividerThickness:
                                                      1.0,
                                                  addVerticalDivider: false,
                                                );
                                              },
                                            ),
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
                  FlutterFlowIconButton(
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
