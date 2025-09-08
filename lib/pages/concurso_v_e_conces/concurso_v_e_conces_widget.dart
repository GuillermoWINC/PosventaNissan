import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'concurso_v_e_conces_model.dart';
export 'concurso_v_e_conces_model.dart';

class ConcursoVEConcesWidget extends StatefulWidget {
  const ConcursoVEConcesWidget({super.key});

  static String routeName = 'concursoVEConces';
  static String routePath = '/concursoVEConces';

  @override
  State<ConcursoVEConcesWidget> createState() => _ConcursoVEConcesWidgetState();
}

class _ConcursoVEConcesWidgetState extends State<ConcursoVEConcesWidget> {
  late ConcursoVEConcesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConcursoVEConcesModel());

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterFlowWebView(
                content:
                    'https://ventaexterior.replit.app/?page=premiosve_consulta',
                bypass: false,
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: MediaQuery.sizeOf(context).height * 1.0,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
