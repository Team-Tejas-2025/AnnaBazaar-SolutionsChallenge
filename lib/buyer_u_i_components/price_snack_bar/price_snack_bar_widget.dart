import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'price_snack_bar_model.dart';
export 'price_snack_bar_model.dart';

class PriceSnackBarWidget extends StatefulWidget {
  const PriceSnackBarWidget({
    super.key,
    required this.image,
    required this.price,
    required this.name,
    required this.quantityCounter,
  });

  final String? image;
  final int? price;
  final String? name;
  final int? quantityCounter;

  @override
  State<PriceSnackBarWidget> createState() => _PriceSnackBarWidgetState();
}

class _PriceSnackBarWidgetState extends State<PriceSnackBarWidget> {
  late PriceSnackBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PriceSnackBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Material(
        color: Colors.transparent,
        elevation: 8.0,
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '5aioa5j4' /* In Stock */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF2E7D32),
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        formatNumber(
                          functions.subtotalprice(
                              widget.price!, widget.quantityCounter!),
                          formatType: FormatType.custom,
                          currency: '₹',
                          format: '',
                          locale: '',
                        ),
                        '50',
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          var cartProductRecordReference =
                              CartProductRecord.collection.doc();
                          await cartProductRecordReference
                              .set(createCartProductRecordData(
                            pName: widget.name,
                            pImage: widget.image,
                            pPrice: widget.price,
                            finalPrice: functions.subtotalprice(
                                widget.price!, widget.quantityCounter!),
                            quantityCounter: widget.quantityCounter,
                          ));
                          _model.cartdsp =
                              CartProductRecord.getDocumentFromData(
                                  createCartProductRecordData(
                                    pName: widget.name,
                                    pImage: widget.image,
                                    pPrice: widget.price,
                                    finalPrice: functions.subtotalprice(
                                        widget.price!,
                                        widget.quantityCounter!),
                                    quantityCounter: widget.quantityCounter,
                                  ),
                                  cartProductRecordReference);
                          FFAppState().sum =
                              FFAppState().sum + _model.cartdsp!.finalPrice;
                          safeSetState(() {});

                          context.goNamed(
                            BuyerCartWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          '322bwern' /* Add to Cart */,
                        ),
                        options: FFButtonOptions(
                          width: 125.0,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(width: 4.0))
                      .addToStart(SizedBox(width: 10.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
