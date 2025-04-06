import '/auth/firebase_auth/auth_util.dart';
import '/components_for_app/divider_2/divider2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'google_login_phone_login_buyer_model.dart';
export 'google_login_phone_login_buyer_model.dart';

class GoogleLoginPhoneLoginBuyerWidget extends StatefulWidget {
  const GoogleLoginPhoneLoginBuyerWidget({super.key});

  static String routeName = 'google_login_phone_login_buyer';
  static String routePath = '/googleLoginPhoneLoginBuyer';

  @override
  State<GoogleLoginPhoneLoginBuyerWidget> createState() =>
      _GoogleLoginPhoneLoginBuyerWidgetState();
}

class _GoogleLoginPhoneLoginBuyerWidgetState
    extends State<GoogleLoginPhoneLoginBuyerWidget> {
  late GoogleLoginPhoneLoginBuyerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoogleLoginPhoneLoginBuyerModel());
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFDFFFD6),
                            FlutterFlowTheme.of(context).secondaryBackground
                          ],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x00FFFFFF), Color(0xFFE0F7FA)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.82),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.asset(
                    'assets/images/a-logo-with-the-stylized-text-anna-bazaar-in-blue--cSOBtJgITKSGDXcd8Q3LiQ-u1PtVPAAQEC_hFpV-LVJyA.png',
                    height: 426.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ckgi14qq' /* Let’s get you in */,
                                    ),
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF101518),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              GoRouter.of(context).prepareAuthEvent();
                              final user =
                                  await authManager.signInWithGoogle(context);
                              if (user == null) {
                                return;
                              }

                              context.pushNamedAuth(
                                  BuyerHomeScreenWidget.routeName,
                                  context.mounted);
                            },
                            text: FFLocalizations.of(context).getText(
                              'amuv4w2u' /* Sign in with Google */,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 54.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  29.0, 0.0, 24.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFEBF3E7),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 15.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.divider2Model,
                          updateCallback: () => safeSetState(() {}),
                          child: Divider2Widget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.goNamed(
                                BuyerPhoneSignUpWidget.routeName,
                                queryParameters: {
                                  'mobileNumber': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              '6hrc9xrf' /* Sign in with Phone */,
                            ),
                            icon: Icon(
                              Icons.phone_sharp,
                              size: 22.0,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 54.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFE0F7FA),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 15.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 20.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'ujuekchv' /* Don't have an account?  */,
                                    ),
                                    style: TextStyle(
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'j4va3b9o' /* Sign up */,
                                    ),
                                    style: TextStyle(
                                      color: Color(0xFF36B3B2),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF777777),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].addToEnd(SizedBox(height: 24.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
