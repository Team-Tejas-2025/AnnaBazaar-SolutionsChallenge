import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'messege_sending_text_field_model.dart';
export 'messege_sending_text_field_model.dart';

class MessegeSendingTextFieldWidget extends StatefulWidget {
  const MessegeSendingTextFieldWidget({super.key});

  @override
  State<MessegeSendingTextFieldWidget> createState() =>
      _MessegeSendingTextFieldWidgetState();
}

class _MessegeSendingTextFieldWidgetState
    extends State<MessegeSendingTextFieldWidget> {
  late MessegeSendingTextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessegeSendingTextFieldModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: TextFormField(
            controller: _model.textController,
            focusNode: _model.textFieldFocusNode,
            autofocus: false,
            obscureText: false,
            decoration: InputDecoration(
              hintText: FFLocalizations.of(context).getText(
                'xiq7c4x9' /* Type your message... */,
              ),
              hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    letterSpacing: 0.0,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE0E0E0),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              suffixIcon: Icon(
                Icons.attach_file_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  letterSpacing: 0.0,
                ),
            maxLines: null,
            minLines: 1,
            validator: _model.textControllerValidator.asValidator(context),
          ),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Color(0xFF046A5D),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Icon(
            Icons.send,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
