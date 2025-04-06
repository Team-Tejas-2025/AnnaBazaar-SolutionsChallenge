import '/flutter_flow/flutter_flow_util.dart';
import 'messege_sending_text_field_widget.dart'
    show MessegeSendingTextFieldWidget;
import 'package:flutter/material.dart';

class MessegeSendingTextFieldModel
    extends FlutterFlowModel<MessegeSendingTextFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
