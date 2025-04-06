import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'select_your_role_model.dart';
export 'select_your_role_model.dart';

class SelectYourRoleWidget extends StatefulWidget {
  const SelectYourRoleWidget({super.key});

  static String routeName = 'SelectYourRole';
  static String routePath = '/selectYourRole';

  @override
  State<SelectYourRoleWidget> createState() => _SelectYourRoleWidgetState();
}

class _SelectYourRoleWidgetState extends State<SelectYourRoleWidget> {
  late SelectYourRoleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectYourRoleModel());
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
        body: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: Lottie.asset(
                    'assets/jsons/Animation_-_1743702140094.json',
                    width: 320.6,
                    height: 324.66,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 0.0, 0.0),
                  child: GradientText(
                    FFLocalizations.of(context).getText(
                      '2ik7bume' /* Select Your Role */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Montserrat',
                          fontSize: 35.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [Color(0xFF0057A7), Colors.green],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.goNamed(
                            GoogleLoginPhoneLoginFarmerWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          '8mb42f7m' /* Continue as Farmer */,
                        ),
                        options: FFButtonOptions(
                          height: 66.23,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFC8E6C9),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Roboto Slab',
                                    color: Color(0xFF16857B),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    lineHeight: 2.0,
                                  ),
                          elevation: 8.0,
                          borderSide: BorderSide(
                            color: Color(0xFF1B5E20),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
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
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'wo5i6asm' /* Continue as Buyer   */,
                        ),
                        options: FFButtonOptions(
                          height: 66.2,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 10.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFE0F7FA),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Roboto Slab',
                                    color: Color(0xFF0057A7),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    lineHeight: 2.0,
                                  ),
                          elevation: 8.0,
                          borderSide: BorderSide(
                            color: Color(0xFF003C73),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)).around(SizedBox(width: 10.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
