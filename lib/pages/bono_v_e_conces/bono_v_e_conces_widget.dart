import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'bono_v_e_conces_model.dart';
export 'bono_v_e_conces_model.dart';

class BonoVEConcesWidget extends StatefulWidget {
  const BonoVEConcesWidget({super.key});

  static String routeName = 'bonoVE_conces';
  static String routePath = '/bonoVEConces';

  @override
  State<BonoVEConcesWidget> createState() => _BonoVEConcesWidgetState();
}

class _BonoVEConcesWidgetState extends State<BonoVEConcesWidget> {
  late BonoVEConcesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BonoVEConcesModel());

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
        List<UsersRecord> bonoVEConcesUsersRecordList = snapshot.data!;

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
                  AuthUserStreamWidget(
                    builder: (context) => FlutterFlowWebView(
                      content:
                          'https://ventaexterior.replit.app/?page=dealer&dealer=${valueOrDefault(currentUserDocument?.dealerCode, '')}',
                      bypass: false,
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      verticalScroll: false,
                      horizontalScroll: false,
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
