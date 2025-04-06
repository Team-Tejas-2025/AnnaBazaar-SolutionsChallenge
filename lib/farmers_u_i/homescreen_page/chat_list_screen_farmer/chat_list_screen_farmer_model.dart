import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chat_list_screen_farmer_widget.dart' show ChatListScreenFarmerWidget;
import 'package:flutter/material.dart';

class ChatListScreenFarmerModel
    extends FlutterFlowModel<ChatListScreenFarmerWidget> {
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
