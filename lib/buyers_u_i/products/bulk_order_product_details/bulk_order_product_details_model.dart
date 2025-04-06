import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bulk_order_product_details_widget.dart'
    show BulkOrderProductDetailsWidget;
import 'package:flutter/material.dart';

class BulkOrderProductDetailsModel
    extends FlutterFlowModel<BulkOrderProductDetailsWidget> {
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
