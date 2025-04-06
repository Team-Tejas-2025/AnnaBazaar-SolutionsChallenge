import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'retail_or_bulk_model.dart';
export 'retail_or_bulk_model.dart';

/// create a retail and bulk product upload button to direct to the following
/// pages
class RetailOrBulkWidget extends StatefulWidget {
  const RetailOrBulkWidget({super.key});

  @override
  State<RetailOrBulkWidget> createState() => _RetailOrBulkWidgetState();
}

class _RetailOrBulkWidgetState extends State<RetailOrBulkWidget> {
  late RetailOrBulkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RetailOrBulkModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    UploadProductsWidget.routeName,
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
                  'ef6btpnb' /* Upload Retail Product */,
                ),
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: FlutterFlowTheme.of(context).info,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.1,
                  height: 60.0,
                  padding: EdgeInsets.all(8.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    UploadBulkProductsWidget.routeName,
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
                  '6pxcstty' /* Upload Bulk Products */,
                ),
                icon: Icon(
                  Icons.inventory_2,
                  color: FlutterFlowTheme.of(context).info,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.1,
                  height: 60.0,
                  padding: EdgeInsets.all(8.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
