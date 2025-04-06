import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'view_active_products_widget.dart' show ViewActiveProductsWidget;
import 'package:flutter/material.dart';

class ViewActiveProductsModel
    extends FlutterFlowModel<ViewActiveProductsWidget> {
  ///  Local state fields for this page.

  String? retailstock;

  String? bulkstock;

  Color? containercolor;

  Color? textcolor;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductsRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
  }
}
