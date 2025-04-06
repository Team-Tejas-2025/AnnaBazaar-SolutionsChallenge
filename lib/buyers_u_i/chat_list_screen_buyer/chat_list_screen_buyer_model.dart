import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chat_list_screen_buyer_widget.dart' show ChatListScreenBuyerWidget;
import 'package:flutter/material.dart';

class ChatListScreenBuyerModel
    extends FlutterFlowModel<ChatListScreenBuyerWidget> {
  ///  State fields for stateful widgets in this page.

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
