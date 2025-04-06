import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'divider2_model.dart';
export 'divider2_model.dart';

class Divider2Widget extends StatefulWidget {
  const Divider2Widget({super.key});

  @override
  State<Divider2Widget> createState() => _Divider2WidgetState();
}

class _Divider2WidgetState extends State<Divider2Widget> {
  late Divider2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Divider2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: 1.0,
            decoration: BoxDecoration(
              color: Color(0xFFD3D3D3),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'nhzrqb14' /* or */,
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Roboto',
                    color: Color(0xFF777777),
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: 1.0,
            decoration: BoxDecoration(
              color: Color(0xFFD3D3D3),
            ),
          ),
        ],
      ),
    );
  }
}
