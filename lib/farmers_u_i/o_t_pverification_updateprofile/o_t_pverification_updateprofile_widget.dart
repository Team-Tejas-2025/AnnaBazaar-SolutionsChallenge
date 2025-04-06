import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'o_t_pverification_updateprofile_model.dart';
export 'o_t_pverification_updateprofile_model.dart';

class OTPverificationUpdateprofileWidget extends StatefulWidget {
  const OTPverificationUpdateprofileWidget({super.key});

  static String routeName = 'OTPverification_updateprofile';
  static String routePath = '/oTPverificationUpdateprofile';

  @override
  State<OTPverificationUpdateprofileWidget> createState() =>
      _OTPverificationUpdateprofileWidgetState();
}

class _OTPverificationUpdateprofileWidgetState
    extends State<OTPverificationUpdateprofileWidget> {
  late OTPverificationUpdateprofileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPverificationUpdateprofileModel());

    _model.pinCodeFocusNode ??= FocusNode();
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 18.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).info,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'sruns56t' /* OTP Verification */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 12.0, 24.0, 12.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'dd2z0qvr' /* Please enter the OTP sent to y... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'rlgjm39f' /* +91 12345 67890 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 46.0, 20.0, 16.0),
                                  child: Container(
                                    width: 800.0,
                                    height: 210.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25.0, 45.0, 25.0, 0.0),
                                            child: PinCodeTextField(
                                              autoDisposeControllers: false,
                                              appContext: context,
                                              length: 4,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        letterSpacing: 0.0,
                                                      ),
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              enableActiveFill: false,
                                              autoFocus: true,
                                              focusNode:
                                                  _model.pinCodeFocusNode,
                                              enablePinAutofill: false,
                                              errorTextSpace: 16.0,
                                              showCursor: true,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              obscureText: false,
                                              keyboardType:
                                                  TextInputType.number,
                                              pinTheme: PinTheme(
                                                fieldHeight: 44.0,
                                                fieldWidth: 44.0,
                                                borderWidth: 1.0,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(12.0),
                                                  bottomRight:
                                                      Radius.circular(12.0),
                                                  topLeft:
                                                      Radius.circular(12.0),
                                                  topRight:
                                                      Radius.circular(12.0),
                                                ),
                                                shape: PinCodeFieldShape.box,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                inactiveColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                selectedColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                              controller:
                                                  _model.pinCodeController,
                                              onChanged: (_) {},
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              validator: _model
                                                  .pinCodeControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '3zfy24zo' /* OTP expires in 2:00 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'clm9oeao' /* Invalid OTP. Please try again. */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'tvmhdho4' /* Resend OTP */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 25.0, 30.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: FFLocalizations.of(context).getText(
                                '05kjywx4' /* Verify OTP */,
                              ),
                              options: FFButtonOptions(
                                width: 200.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 15.0,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: Container(
                              width: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
                    child: Container(
                      width: 311.0,
                      height: 103.69,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).success,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'ygkgw9vn' /* OTP verified successfully!
You... */
                              ,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Lora',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        '14466otf' /* Go to Dashboard */,
                      ),
                      options: FFButtonOptions(
                        width: 198.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).success,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 15.0,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}
