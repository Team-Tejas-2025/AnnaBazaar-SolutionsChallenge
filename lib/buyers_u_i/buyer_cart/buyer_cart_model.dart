import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'buyer_cart_widget.dart' show BuyerCartWidget;
import 'package:flutter/material.dart';

class BuyerCartModel extends FlutterFlowModel<BuyerCartWidget> {
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
